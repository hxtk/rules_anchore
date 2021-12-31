load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@com_github_hxtk_rules_anchore//anchore:defs.bzl", "grype_test", "grype_updater")

grype_updater(
    name = "update-grype",
    output = "deps.bzl#grype_db",
    repository_name = "grype_database",
)

grype_test(
    name = "basic_test",
    image = "@distroless_base//image",
    database = "@grype_database//file",
    ignore_cves = [
        "CVE-2021-33574",
    ],
    tags = [
        "large",
    ],
)

container_image(
    name = "server_image",
    base = "@distroless_base//image",
)

grype_test(
    name = "fail_on_severity_test",
    image = ":server_image",
    database = "@grype_database//file",
    ignore_cves = [
        "CVE-2021-33574",
    ],
    fail_on_severity = "critical",
    tags = [
        "large",
    ],
)

grype_test(
    name = "only_fixed_test",
    image = ":server_image.tar",
    database = "@grype_database//file",
    only_fixed = True,
)

grype_test(
    name = "database_test",
    image = ":server_image.tar",
    database = "@old_cve_database//file",
)
