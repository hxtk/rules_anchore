load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//anchore:anchore.bzl", "syft_sbom", "grype_test")

grype_test(
    name = "test1",
    image = "@distroless_base//image",
    tags = [
        "manual",
        "external",
        "large",
    ],
)

container_image(
    name = "server_image",
    base = "@distroless_base//image",
)

grype_test(
    name = "test2",
    image = ":server_image",
    tags = [
        "manual",
        "external",
        "large",
    ],
)

grype_test(
    name = "test3",
    image = ":server_image.tar",
    tags = [
        "manual",
        "external",
        "large",
    ],
)
