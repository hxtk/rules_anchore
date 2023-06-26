load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//anchore:defs.bzl", "grype_test", "syft_sbom")

grype_test(
    name = "basic_test",
    image = "@distroless_base//image",
    tags = [
        "large",
        "manual",
    ],
)

container_image(
    name = "server_image",
    base = "@distroless_base//image",
)

grype_test(
    name = "fail_on_severity_test",
    database = "@grype_database//file",
    fail_on_severity = "critical",
    ignore_cves = [
        "CVE-2021-33574",
        "CVE-2022-23218",
        "CVE-2022-23219",
        "CVE-2022-1292",
    ],
    image = ":server_image",
    tags = [
        "large",
        "manual",
    ],
)

grype_test(
    name = "only_fixed_test",
    database = "@grype_database//file",
    image = ":server_image.tar",
    only_fixed = True,
    tags = [
        "large",
        "manual",
    ],
)

grype_test(
    name = "database_test",
    database = "@outdated_cve_database//file",
    image = ":server_image.tar",
    tags = [
        "large",
    ],
)
