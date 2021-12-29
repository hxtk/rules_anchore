load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # Apache 2.0

bzl_library(
    name = "defs",
    srcs = ["defs.bzl"],
    deps = [
        ":anchore",
        ":updater",
    ],
)

bzl_library(
    name = "anchore",
    srcs = ["anchore.bzl"],
)

bzl_library(
    name = "anchore.docs",
    srcs = ["anchore.docs.bzl"],
    deps = [":anchore"],
)

bzl_library(
    name = "updater",
    srcs = ["updater.bzl"],
)

bzl_library(
    name = "updater.docs",
    srcs = ["updater.docs.bzl"],
    deps = [":updater"],
)
