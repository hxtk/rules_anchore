# Bazel Anchore Rules

Anchore™ produces two open source container scanning tools, namely Syft and
Grype, which produce Software BOMs and vulnerability scans of container images,
respectively.

These rules allow one to use those tools with Bazel in a manner that is
compatible with 
[`io_bazel_rules_docker`](https://github.com/bazelbuild/rules_docker).
In particular, `container_image` and `container_pull` targets are supported.

## Affiliation/Disclaimer.

This repository and its owners are not affiliated with Anchore, Inc.
in any way. The various Anchore™ open source products used by these
rules are available only under their respective licenses, regardless of the
license for this repository. "Anchore™" is a registered trade mark of
[Anchore, Inc](https://anchore.com/).

For simplicity, it is intended for this repository to be available under
the same license terms. At time of writing, the open source Anchore™
dependencies are licensed under the Apache 2.0 license.

## Setup

```starlark
http_archive(
  # Get copy paste instructions for the http_archive attributes from the
  # release notes at https://github.com/hxtk/rules_anchore/releases
)

# If your project does not have a Go toolchain configured (see
# https://github.com/bazelbuild/bazel-gazelle) then it is necessary to
# configure one here:
load("@com_github_hxtk_rules_anchore//:go_deps.bzl", "go_dependencies")

go_dependencies()

load("@com_github_hxtk_rules_anchore//:deps.bzl", "go_toolchain")

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

go_rules_dependencies()
go_register_toolchains(version = "1.17.2")
gazelle_dependencies()

# End Go Toolchain section.

load("@com_github_hxtk_rules_anchore//:deps.bzl", "anchore_deps")

anchore_deps()
```

## Usage

Basic example:

```starlark
container_image(
    name = "foo",
    ...
)

grype_test(
    name = "foo_cve_scan",
    image = ":foo",
    fail_on_severity = "high",
    tags = [
        "manual",    # To avoid breaking CI on vulnerabilities.
        "external",  # This tag will be added implicitly if omitted, as
                     # we depend on the CVE database fetched from the internet.
        "large",     # Checking and updating the CVE database can take quite
                     # some time.
    ],
)
```

For detailed documentation, see [`//docs:anchore.md`](docs/anchore.md)

For usage examples, see [`//examples:BUILD`](examples/BUILD).
