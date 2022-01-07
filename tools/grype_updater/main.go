package main

import (
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"net/http"
	"os"
	"path"
	"strconv"
	"strings"
	"time"

	"github.com/bazelbuild/bazel-gazelle/rule"
)

var (
	listingURL = flag.String("url", "https://toolbox-data.anchore.io/grype/databases/listing.json", "URL of the Grype CVE Database Listing")
	dbVersion  = flag.Int("db-version", 3, "Version of the database to fetch.")
	output     = flag.String("output", "WORKSPACE", "File in which to place the generated repository rule, e.g., WORKSPACE, deps.bzl#anchore_db")
	repoName   = flag.String("repo-name", "grype_database", "Name of the generated repository rule")
	timeoutStr = flag.String("timeout", "300s", "Time string indicating the maximum duration we are allowed.")
)

const (
	startDelimiter = "# com_github_hxtk_rules_anchore managed rule; DO NOT EDIT"
)

type item struct {
	Built    time.Time `json:"built"`
	Version  int       `json:"version"`
	URL      string    `json:"url"`
	Checksum string    `json:"checksum"`
}

type available map[string][]item

type listing struct {
	Available available `json:"available"`
}

type httpFile struct {
	name   string
	sha256 string
	url    string
}

const httpFileString = `http_file(
    name = "%s",
    sha256 = "%s",
    urls = [
        "%s",
    ],
)
`

func (h *httpFile) String() string {
	return fmt.Sprintf(httpFileString, h.name, h.sha256, h.url)
}

func indent(str, prefix string) string {
	lines := strings.Split(str, "\n")
	for i := 0; i < len(lines); i++ {
		if lines[i] == "" {
			continue
		}
		lines[i] = prefix + lines[i]
	}
	return strings.Join(lines, "\n")
}

func main() {
	flag.Parse()
	log.Default().SetFlags(log.Default().Flags() | log.Lshortfile)
	timeout, err := time.ParseDuration(*timeoutStr)
	if err != nil {
		log.Fatalf("Error parsing timeout: %v.", err)
	}

	ctx, cancel := context.WithTimeout(context.Background(), timeout)
	defer cancel()

	req, err := http.NewRequestWithContext(ctx, http.MethodGet, *listingURL, nil)
	if err != nil {
		log.Fatalf("Error constructing HTTP Request: %v.", err)
	}

	client := &http.Client{}
	rsp, err := client.Do(req)
	if err != nil {
		log.Fatalf("Error making HTTP Request: %v.", err)
	}
	defer rsp.Body.Close()

	var data listing
	err = json.NewDecoder(rsp.Body).Decode(&data)
	if err != nil {
		log.Fatalf("Error decoding JSON: %v.", err)
	}

	sublist, ok := data.Available[strconv.Itoa(*dbVersion)]
	if !ok {
		for k, _ := range data.Available {
			log.Printf("Listing available for DB v%v.", k)
		}
		log.Fatalf("No listing available for DB v%v.", *dbVersion)
	}

	entry, err := getHTTPFile(sublist)
	if err != nil {
		log.Fatalf("Error getting entry: %v.", err)
	}

	writeOutput(entry, *output)
}

func writeOutput(entry *httpFile, outStr string) {
	// Generate the managed block.
	parts := strings.Split(outStr, "#")
	if len(parts) == 1 {
		parts = strings.Split(outStr, "%")
	}

	var managedBlock string
	if len(parts) >= 2 {
		managedBlock += fmt.Sprintf("def %s():\n", parts[1])
		managedBlock += indent(entry.String(), "    ")
	} else {
		managedBlock += entry.String()
	}

	// If the file name was "-", we print to stdout and return.
	if parts[0] == "-" {
		fmt.Print(managedBlock)
		return
	}

	filePath := path.Join(os.Getenv("BUILD_WORKSPACE_DIRECTORY"), parts[0])
	var file *rule.File
	var err error
	if len(parts) == 1 {
		file, err = rule.LoadWorkspaceFile(filePath, "")
		if os.IsNotExist(err) {
			file = rule.EmptyFile(filePath, "")
			err = nil
		}
	} else if len(parts) == 2 {
		file, err = rule.LoadMacroFile(filePath, "", parts[1])
		if os.IsNotExist(err) {
			file, err = rule.EmptyMacroFile(filePath, "", parts[1])
		}
	} else {
		log.Fatalf("Expected output of the form WORKSPACE or test.bzl%macroName.")
	}
	if err != nil {
		log.Fatalf("Error opening output file: %v.", err)
	}

	grypeRule := rule.NewRule("http_file", entry.name)
	grypeRule.SetAttr("sha256", entry.sha256)
	grypeRule.SetAttr("urls", []string{entry.url})
	grypeRule.AddComment(startDelimiter)
	for _, v := range file.Rules {
		if v.Name() == entry.name {
			v.Delete()
		}
	}
	file.Sync()

	grypeRule.Insert(file)
	file.Save(filePath)
}

func addLoad(file *rule.File) {
	for _, v := range file.Loads {
		if v.Name() == "@bazel_tools//tools/build_defs/repo:http.bzl" {
			v.Add("http_file")
			file.Sync()
			return
		}
	}

	load := rule.NewLoad("@bazel_tools//tools/build_defs/repo:http.bzl")
	load.Add("http_file")
	load.Insert(file, 1)
	file.Sync()
}

func getHTTPFile(items []item) (*httpFile, error) {
	for _, v := range items {
		splitSum := strings.Split(v.Checksum, ":")
		if len(splitSum) != 2 || splitSum[0] != "sha256" {
			log.Printf("Malformed checksum: %q.", v.Checksum)
			continue
		}
		return &httpFile{
			name:   *repoName,
			sha256: splitSum[1],
			url:    v.URL,
		}, nil
	}
	return nil, fmt.Errorf("no well-formed entries found")
}
