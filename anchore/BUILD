load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # Apache 2.0

bzl_library(
    name = "anchore",
    srcs = ["anchore.bzl"],
)

bzl_library(
    name = "anchore.docs",
    srcs = ["anchore.docs.bzl"],
    deps = [":anchore"],
)
