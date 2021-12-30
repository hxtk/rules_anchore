package main

import (
	"strconv"
	"strings"
	"testing"
)

func TestHasLoadStatement(t *testing.T) {
	cases := []struct {
		input  string
		expect bool
	}{
		{
			input:  `load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")`,
			expect: true,
		},
		{
			input: `load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_file",
)`,
			expect: true,
		},
		{
			input: `load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    http_archive = "http_archive",
    "http_file",
)`,
			expect: true,
		},
		{
			input: `load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_file",
    "http_archive",
)`,
			expect: true,
		},
		{
			input:  `load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")`,
			expect: true,
		},
		{
			input:  `load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file", "http_archive")`,
			expect: true,
		},
		{
			input:  `load("@bazel_tools//tools/build_defs/repo:http.bzl", http_file = "http_file")`,
			expect: true,
		},
	}

	for i, v := range cases {
		t.Run("case_"+strconv.Itoa(i), func(t *testing.T) {
			r := strings.NewReader(v.input)
			got, err := hasLoadStatement(r)
			if err != nil {
				t.Error("Input:")
				t.Error(v.input)
				t.Errorf("Expected %v, got error: %v.", v.expect, err)
			}

			if v.expect != got {
				t.Error("Input:")
				t.Error(v.input)
				t.Errorf("Expected %v, got %v.", v.expect, got)
			}
		})
	}
}
