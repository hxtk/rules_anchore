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

load("@com_github_hxtk_rules_anchore//:extra_deps.bzl", "anchore_extra_deps")

# By default, this method configures a Go toolchain. If you have already
# configured a Go toolchain in your WORKSPACE, pass `configure_go=False`.
anchore_extra_deps()
```

## Usage

Below is a minimal example, representing the simplest configuration that will
accurately detect "high" and "critical" CVEs with known fixes.

The resulting test is flakey and not cache-friendly because it fetches the
latest CVE database every time it runs. This also makes it rather slow.

A more complete configuration using an explicitly declared external database
with automated tooling to update that declaration on a regular basis is
recommended, and is shown elsewhere in greater detail.

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
For detailed documentation, see
[`//docs:anchore.md#grype_updater`](docs/anchore.md#grype_updater).

This also makes a convenient time to rerun all of your `grype_test` rules which use
the pinned database in order to scan for newly-discovered vulnerabilities independent
of any changes to your code. For example, with the above `//:BUILD` file, a nightly CI
job could be configured to run something like the following:

```
bazel run //:update-grype
bazel query 'kind(grype_test, //...) | xargs -I % bazel test %
# Some kind of logic to report errors and exit, or else:

git add WORKSPACE
git commit -m "automated CVE database update"
git push
```

For an example, see
[`//.github/workflows/update_grype.yaml`](.github/workflows/update_grype.yaml).
Note that in practice, you may wish to update more frequently than the weekly
schedule in that example.

## On Versioning, Production-Readiness, and Stability

This repository's releases are versioned with
[Semantic Versioning](https://semver.org/). It is intended that, for example,
any repository set up with v2.0.0 can change nothing but the WORKSPACE
declaration included in the release notes and continue to work with any
v2.y.z with no changes to any `BUILD` files. The major version **SHOULD**
increment on WORKSAPCE declaration changes when those changes will affect
compatibility (e.g., the increment from v1 to v2 was because we stopped
building the Grype™ and Syft™ binaries from source, which meant the tool
was no longer compatible with platforms for which pre-compiled binaries were
not available).

Additionally, to avoid the risk of accidentally implementing
[0ver](https://0ver.org/) instead of semver, the first release was v1.0.0. If
there are breaking changes to a documented use case, the major version will
increment. This is not an indicator of production-readiness. This is a hobby
project, and production-readiness is subjective.

This use of semver is also not a stability guarantee. If a desired change
cannot be made in a non-breaking fashion, the change will be made and the
major version will increment. It is unlikely that any version behind `HEAD`
will receive much if any first-party support. This project's release version
numbers reflect only the kinds of changes between two releases; no more, and
no less.
