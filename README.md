# Bazel Anchore Rules

Anchore™ produces two open source container scanning tools, namely Syft and
Grype, which produce Software BOMs and vulnerability scans of container images,
respectively.

These rules allow one to use those tools with Bazel in a manner that is
compatible with 
[`io_bazel_rules_docker`](https://github.com/bazelbuild/rules_docker).
In particular, `container_image` and `container_pull` targets are supported.

## Affiliation/Disclaimer

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

load("@com_github_hxtk_rules_anchore//:deps.bzl", "anchore_deps")

anchore_deps()

load("//:extra_deps.bzl", "anchore_extra_deps")

# By default, this method configures a Go toolchain. If you have already
# configured a Go toolchain in your WORKSPACE, pass `configure_go=False`.
anchore_extra_deps()
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
    only_fixed = True,
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

For detailed documentation, see [`//docs:anchore.md`](docs/anchore.md).

For usage examples, see [`//examples:BUILD`](examples/BUILD).

### Pinning your CVE database

We provide a `grype_updater` rule which produces a binary that will define an
`http_file` repository representing the latest CVE database. When combined with
careful management or automation, this allows one to reap the benefits of
hermetic tests, such as cache-friendliness, increased speed, the ability to run
in an airgapped environment (with pre-fetched dependencies), and a consistent
baseline for CI; without the arduous process of manually updating repository
information on a regular basis which, in practice, would likely lead to using 
an out-of-date database.

To use it, simply include the following in your `//:BUILD` file:

```starlark
load("com_github_hxtk_rules_anchore//anchore:defs.bzl", "grype_updater", "grype_test")

grype_updater(
    name = "update-grype",
    repository_name = "cve_database",
)

grype_test(
    name = "foo_cve_scan",
    image = "...",
    database = "@cve_database//file",
    fail_on_severity = "high",
    only_fixed = True,
)
```

Then, on a regular basis, simply run `bazel run //:update-grype` to update it.
For detailed documentation, see [`//docs:anchore.md`](docs/anchore.md).

This also makes a convenient time to rerun all of your `grype_test` rules which use
the pinned database in order to scan for newly-discovered vulnerabilities independent
of any changes to your code. For example, with the above `//:BUILD` file, a nightly CI
job could be configured to run

```
bazel run //:update-grype
bazel query 'kind(grype_test, //...) | xargs -I % bazel test %
# Some kind of logic to report errors and exit, or else:

git add WORKSPACE
git commit -m "automated CVE database update"
git push
```
