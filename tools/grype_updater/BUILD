load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library", "go_test")

go_library(
    name = "lib",
    srcs = ["main.go"],
    importpath = "github.com/hxtk/rules_anchore/tools/grype_updater",
    deps = ["@bazel_gazelle//rule"],
)

go_binary(
    name = "grype_updater",
    embed = [":lib"],
    visibility = ["//visibility:public"],
)
