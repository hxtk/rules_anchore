package main

import (
	"bufio"
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"path"
	"strconv"
	"strings"
	"time"
)

var (
	listingURL = flag.String("url", "https://toolbox-data.anchore.io/grype/databases/listing.json", "URL of the Grype CVE Database Listing")
	dbVersion  = flag.Int("db-version", 3, "Version of the database to fetch.")
	output     = flag.String("output", "WORKSPACE", "File in which to place the generated repository rule, e.g., WORKSPACE, deps.bzl#anchore_db")
	repoName   = flag.String("repo-name", "grype_database", "Name of the generated repository rule")
	timeoutStr = flag.String("timeout", "300s", "Time string indicating the maximum duration we are allowed.")
)

const (
	startDelimiter = "# com_github_hxtk_rules_anchore managed block; DO NOT EDIT"
	loadStatement  = `load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")`
	endDelimiter   = "# END com_github_hxtk_rules_anchore managed block"
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
	managedBlock := startDelimiter + "\n" + loadStatement + "\n"
	if len(parts) >= 2 {
		managedBlock += fmt.Sprintf("def %s():\n", parts[1])
		managedBlock += indent(entry.String(), "    ")
	} else {
		managedBlock += entry.String()
	}
	managedBlock += endDelimiter + "\n"

	// If the file name was "-", we print to stdout and return.
	if parts[0] == "-" {
		fmt.Print(managedBlock)
		return
	}

	filePath := path.Join(os.Getenv("BUILD_WORKSPACE_DIRECTORY"), parts[0])
	f, err := os.Open(filePath)
	if os.IsNotExist(err) {
		// If the output file did not exist, we create it and write to it directly.
		f, err := os.Create(filePath)
		if err != nil {
			log.Fatalf("Error creating output file: %v.", err)
		}
		defer f.Close()

		_, err = io.WriteString(f, managedBlock)
		if err != nil {
			log.Fatalf("Error writing output to file: %v.", err)
		}
		return
	} else if err != nil {
		log.Fatalf("Error opening output file: %v.", err)
	}
	defer f.Close()

	// We write to a temporary file so that we don't have to store the file in RAM:
	// some generated dependency files can be quite large. This also minimizes the risk
	// that the end result will be a corrupted file because we only replace the original
	// file as an atomic operation after the new file has been generated.
	temp, err := os.CreateTemp(path.Dir(filePath), path.Base(filePath)+"-*")
	if err != nil {
		log.Fatalf("Error creating temporary file: %v.", err)
	}

	// We copy the original file line by line, searching for our managed block.
	// When we encounter the managed block in the original file, we skip it
	// and write our newly-generated managed block to the output file.
	scanner := bufio.NewScanner(f)
	written := false
	for scanner.Scan() {
		if scanner.Text() == startDelimiter {
			_, err := io.WriteString(temp, managedBlock)
			if err != nil {
				log.Fatalf("Error writing output to file: %v.", err)
			}
			written = true
			for scanner.Text() != endDelimiter && scanner.Scan() {
				continue
			}
			scanner.Scan()
			if err := scanner.Err(); err != nil {
				log.Fatalf("Error reading original file: %v.", err)
			}
		}
		_, err := fmt.Fprintln(temp, scanner.Text())
		if err != nil {
			log.Fatalf("Error writing output file: %v.", err)
		}
	}
	if err := scanner.Err(); err != nil {
		log.Fatalf("Error reading original file: %v.", err)
	}

	// If the original file existed but did not contain our managed block
	// delimiter, then there wouldn't have been anything to replace with our
	// new managed block. In this instance, we just write our managed block
	// to the end of the new file.
	if !written {
		_, err := io.WriteString(temp, managedBlock)
		if err != nil {
			log.Fatalf("Error writing output to file: %v.", err)
		}
	}

	// Now that the replacement file has been totally generated, we delete
	// the original. If this fails, we tell the user where to find the new
	// file.
	err = os.Remove(filePath)
	if err != nil {
		log.Fatalf(
			"Error deleting original file: %v; new version exists at %q.",
			err,
			temp.Name(),
		)
	}

	// Finally, we rename the new file onto the old one.
	err = os.Rename(temp.Name(), f.Name())
	if err != nil {
		log.Fatalf("Error renaming new file: %v.", err)
	}
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
