load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@com_github_hxtk_rules_anchore//anchore:anchore.bzl", "grype_test")

grype_test(
    name = "basic_test",
    image = "@distroless_base//image",
    tags = [
        "manual",
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
    fail_on_severity = "critical",
    tags = [
        "manual",
        "large",
    ],
)

grype_test(
    name = "only_fixed_test",
    image = ":server_image.tar",
    only_fixed = True,
    tags = [
        "manual",
        "large",
    ],
)

grype_test(
    name = "database_test",
    image = ":server_image.tar",
    database = "@cve_database//file",
    tags = [
        "large",
    ],
)
