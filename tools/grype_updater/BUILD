load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library", "go_test")

go_library(
    name = "lib",
    srcs = ["main.go"],
    importpath = "github.com/hxtk/rules_anchore/tools/grype_updater",
)

go_binary(
    name = "grype_updater",
    embed = [":lib"],
    visibility = ["//visibility:public"],
)

go_test(
    name = "go_default_test",
    srcs = ["main_test.go"],
    embed = [":lib"],
)
