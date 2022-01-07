load("//anchore:defs.bzl", "grype_updater")

grype_updater(
    name = "update-grype",
    repository_name = "grype_database",
)

grype_updater(
    name = "update-grype-hash",
    output = "test.bzl#hash_separator",
)

grype_updater(
    name = "update-grype-percent",
    output = "test.bzl%percent_separator",
)
