load("@bazel_gazelle//:def.bzl", "gazelle")

# gazelle:prefix github.com/hxtk/rules_anchore
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
