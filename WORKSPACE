workspace(name = "com_github_hxtk_rules_anchore")

load("//:deps.bzl", "anchore_deps")

anchore_deps()

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
    digest = "sha256:02f4c952f790848aa6ffee8d241c67e0ac5364931c76a80094348af386076ad4",
    registry = "gcr.io",
    repository = "distroless/base-debian11",
    tag = "nonroot",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
http_file(
    name = "cve_database",
    sha256 = "9721e633543bb663814fad30a6f84f8f5de2fedcaaaea42547490ffb18e1f360",
    urls = ["https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v3_2021-06-01T20:56:41Z.tar.gz"],
)
