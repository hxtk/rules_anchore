workspace(name = "com_github_hxtk_rules_anchore")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("//:deps.bzl", "anchore_deps")

anchore_deps()

load("//:extra_deps.bzl", "anchore_extra_deps")

anchore_extra_deps()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
)

container_pull(
    name = "distroless_base",
    digest = "sha256:1b2306a7c6e3a2693b730bd2697704650ba71bfa7ba55ee096e8734ae6473f66",
    registry = "gcr.io",
    repository = "distroless/base-debian11",
    tag = "nonroot",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

http_file(
    name = "outdated_cve_database",
    sha256 = "9721e633543bb663814fad30a6f84f8f5de2fedcaaaea42547490ffb18e1f360",
    urls = ["https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v3_2021-06-01T20:56:41Z.tar.gz"],
)

# com_github_hxtk_rules_anchore managed rule; DO NOT EDIT
http_file(
    name = "grype_database",
    sha256 = "aab36a3cd66053720afc8074c1b4017abfe7e13ea9fdf7fd9566b8c9edd478df",
    urls = ["https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v3_2022-06-01T14:35:04Z_8936049ce6c9b6d895fd.tar.gz"],
)
