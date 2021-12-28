load("@bazel_gazelle//:def.bzl", "gazelle")

exports_files([":anchore.bzl"], visibility="//docs:__pkg__")

# gazelle:prefix github.com/hxtk/yggdrasil
gazelle(name = "gazelle")

gazelle(
    name = "gazelle-update-repos",
    args = [
        "-from_file=go.mod",
        "-to_macro=deps.bzl%anchore_deps",
        "-prune",
    ],
    command = "update-repos",
)
