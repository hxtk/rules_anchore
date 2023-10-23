def _syft_sbom_impl(ctx):
    outputs = [
        ctx.outputs.syft_json,
        ctx.outputs.github_json,
        ctx.outputs.cyclonedx_json,
        ctx.outputs.cyclonedx_xml,
        ctx.outputs.spdx_json,
        ctx.outputs.spdx_tag_value,
    ]

    args = ctx.actions.args()
    args.add_joined(["docker-archive", ctx.file.image], join_with = ":")
    args.add("--scope", ctx.attr.scope)
    args.add_joined("--output", ["syft-json", ctx.outputs.syft_json], join_with = "=")
    args.add_joined("--output", ["github-json", ctx.outputs.github_json], join_with = "=")
    args.add_joined("--output", ["cyclonedx-json", ctx.outputs.cyclonedx_json], join_with = "=")
    args.add_joined("--output", ["cyclonedx-xml", ctx.outputs.cyclonedx_xml], join_with = "=")
    args.add_joined("--output", ["spdx-json", ctx.outputs.spdx_json], join_with = "=")
    args.add_joined("--output", ["spdx-tag-value", ctx.outputs.spdx_tag_value], join_with = "=")

    if ctx.file.config:
        args.add("--config", ctx.file.config)

    ctx.actions.run(
        inputs = [ctx.file.image],
        outputs = outputs,
        executable = ctx.executable.syft_,
        mnemonic = "SyftScan",
        progress_message = "Generating SBOM",
        arguments = [args],
    )

    return [DefaultInfo(files = depset([ctx.outputs.syft_json]))]

_syft_sbom = rule(
    attrs = {
        "image": attr.label(
            doc = "A TAR export of the image to be scanned compatible with `docker save`. Overrides `sbom`.",
            allow_single_file = [".tar"],
            mandatory = True,
        ),
        "scope": attr.string(
            doc = "Scope of the scan, when an image is provided. See Anchore Grype documentation.",
            default = "Squashed",
            values = [
                "Squashed",
                "All",
            ],
        ),
        "config": attr.label(
            doc = "Not yet implemented.",
            mandatory = False,
            allow_single_file = True,
        ),
        "syft_": attr.label(
            mandatory = True,
            allow_single_file = True,
            executable = True,
            cfg = "exec",
        ),
        "syft_json": attr.output(),
        "github_json": attr.output(),
        "cyclonedx_json": attr.output(),
        "cyclonedx_xml": attr.output(),
        "spdx_json": attr.output(),
        "spdx_tag_value": attr.output(),
    },
    implementation = _syft_sbom_impl,
)

def syft_sbom(name, image, scope="Squashed", **kwargs):
    """Create an SBOM for an image.

    Uses Anchore Syft to create a Software Bill of Materials for a container
    image.

    The user is required to provide `name` and `image`; all other fields have
    sane defaults.

    Note that if one is also creating a `grype_test` rule for the same image,
    one may specify this target as the `sbom` for that `grype_test`, or else
    use the `[name]_sbom` target implicitly created by `grype_test` in lieu of
    explicitly invoking this macro.

    Args:
        name: the name of the label to be created.
        image: the complete docker image TAR, compatible with `docker save`;
            a label for a `container_image` rule; or a label for an imported
            image (i.e., `@foo//image` for a
            `container_pull(name = "foo", ...)` repository rule.
        scope: if "Squashed", only scan the effective file system of
            the final image. If "All", scan every file in each layer,
            including those that are overwritten or deleted in the final
            image.
    """
    if not image.endswith(".tar"):
        original = image
        if ":" in image:
            image = image + ".tar"
        else:
            _, _, package = image.rpartition("/")
            image = image + ":{}.tar".format(package)
        print(
            "Image label {} converted to canonical form {}.".format(
                original,
                image,
            )
        )

    _syft_sbom(
        name = name,
        image = image,
        scope = scope,
        syft_json = name + ".syft.json",
        github_json = name + ".github.json",
        cyclonedx_json = name + ".cdx.json",
        cyclonedx_xml = name + ".cdx.xml",
        spdx_json = name + ".spdx.json",
        spdx_tag_value = name + ".spdx",
        syft_ = select({
            "@bazel_tools//src/conditions:host_windows": "@grype_windows//:grype.exe",
            "@bazel_tools//src/conditions:darwin_x86_64": "@grype_darwin_amd64//:grype",
            "@bazel_tools//src/conditions:darwin_arm64": "@grype_darwin_arm64//:grype",
            "@bazel_tools//src/conditions:linux_x86_64": "@syft_linux_amd64//:syft",
            "@bazel_tools//src/conditions:linux_aarch64": "@grype_linux_arm64//:grype",
        }),
        **kwargs,
    )

def _runfiles_path(ctx, f):
    if f == None:
        return None
    path = ctx.workspace_name + "/" + f.short_path
    return path

_grype_header_linux = """/usr/bin/env sh
"""

_grype_header_windows = """@rem Generated by anchore.bzl, do not edit.
@echo off
"""

_grype_load_command = """
$RUNFILES_DIR/{grype} db delete --config $RUNFILES_DIR/{config}
$RUNFILES_DIR/{grype} db import --config $RUNFILES_DIR/{config} $RUNFILES_DIR/{database}
"""

_grype_test_command = """
$RUNFILES_DIR/{grype} {imgtype}:$RUNFILES_DIR/{image} --config $RUNFILES_DIR/{config} --scope {scope} --fail-on {severity} {extra}
"""

_grype_config = """
db:
  auto-update: {auto_update}
  cache-dir: "$RUNFILES_DIR/grype-db"
  validate-age: {validate_age}
ignore: {ignore_cves}
"""

def _grype_test_impl(ctx):
    imgtype = "sbom"
    imglabel = ctx.file.sbom
    imgpath = _runfiles_path(ctx, ctx.file.sbom)

    extra_args = []
    if ctx.attr.only_fixed:
        extra_args.append("--only-fixed")

    auto_update = "true"
    if ctx.file.database:
        auto_update = "false"

    validate_age = "true"
    if not ctx.attr.validate_age:
        validate_age = "false"

    ignore_cves = '[' + ", ".join(["vulnerability: '" + cve + "'" for cve in ctx.attr.ignore_cves]) + ']'

    config_file = ctx.actions.declare_file(ctx.label.name + "-config.yaml")
    ctx.actions.write(
        output = config_file,
        is_executable = False,
        content = _grype_config.format(
            auto_update=auto_update,
            ignore_cves=ignore_cves,
            validate_age=validate_age
	),
    )

    if ctx.attr.is_windows:
        test_executable = ctx.actions.declare_file(ctx.label.name + "-test.bat")

        content = _grype_header_windows
        if ctx.file.database:
            content += _grype_load_command
        content += _grype_test_command

        content = content.format(
            imgtype = imgtype,
            image = imgpath,
            database = _runfiles_path(ctx, ctx.file.database),
            grype = _runfiles_path(ctx, ctx.executable.grype_),
            severity = ctx.attr.fail_on_severity,
            config_file = _runfiles_path(ctx, config_file),
            scope = ctx.attr.scope,
            extra = " ".join(extra_args),
        )
        ctx.actions.write(
            output = test_executable,
            is_executable = True,
            content = content,
        )
    else:
        test_executable = ctx.actions.declare_file(ctx.label.name + "-test.sh")

        content = _grype_header_linux
        if ctx.file.database:
            content += _grype_load_command
        content += _grype_test_command

        content = content.format(
            imgtype = imgtype,
            image = imgpath,
            database = _runfiles_path(ctx, ctx.file.database),
            grype = _runfiles_path(ctx, ctx.executable.grype_),
            severity = ctx.attr.fail_on_severity,
            config = _runfiles_path(ctx, config_file),
            scope = ctx.attr.scope,
            extra = " ".join(extra_args),
        )
        ctx.actions.write(
            output = test_executable,
            is_executable = True,
            content = content,
        )

    runfiles = [ctx.executable.grype_, imglabel, config_file]
    if ctx.file.database:
        runfiles.append(ctx.file.database)

    return [
        DefaultInfo(
            executable = test_executable,
            files = depset(direct = [test_executable]),
            runfiles = ctx.runfiles(files = runfiles),
        )
    ]

_grype_test = rule(
    attrs = {
        "sbom": attr.label(
            doc = "A JSON-fomatted SBOM compatible with the output of Anchore Syft.",
            allow_single_file = True,
            mandatory = False,
        ),
        "fail_on_severity": attr.string(
            doc = "The test will fail if a CVE of this severity is found. " +
                "Defaults to \"low\" for safety so that users do not ignore " +
                "CVEs by default, but most users will want to choose a higher " +
                "threshold, or define multiple rules at different thresholds. " +
                "Allowed values are: negligible, low, medium, high, critical.",
            default = "low",
            values = [
                "negligible",
                "low",
                "medium",
                "high",
                "critical",
            ],
        ),
        "scope": attr.string(
            doc = "Scope of the scan, when an image is provided. See Anchore Grype documentation.",
            default = "Squashed",
            values = [
                "Squashed",
                "All",
            ],
        ),
        "ignore_cves": attr.string_list(
            doc = "Ignore vulnerabilities named in this list.",
            default = [],
        ),
        "only_fixed": attr.bool(
            doc = "Ignore vulnerabilities that have not been fixed.",
            default = False,
        ),
        "database": attr.label(
            doc = "Vulnerability database file.",
            allow_single_file = True,
        ),
        "grype_": attr.label(
            allow_single_file = True,
            mandatory = True,
            executable = True,
            cfg = "target",
        ),
        "validate_age": attr.bool(mandatory = False, default = True),
        "is_windows": attr.bool(mandatory = True),
    },
    test = True,
    implementation = _grype_test_impl,
)

def grype_test(
    name,
    image = None,
    sbom = None,
    database = None,
    ignore_cves = [],
    only_fixed = False,
    fail_on_severity = "low",
    scope = "Squashed",
    **kwargs,
):
    """Scan a docker image for CVEs.

    Uses Anchore Grype to scan a docker image or Anchore Syft SBOM for
    known vulnerabilities, and fails if vulnerabilities exceeding a
    severity threshold are found.

    The user is required to provide 'name' as well as exactly one of
    'image' or 'sbom'. All other fields have sane defaults.

    If `image` is passed in, a `syft_sbom` rule named `[name]_sbom` is
    implicitly created, and the `grype_test` uses the `sbom` produced
    by that target.

    All tests created by this macro without a value passed for `database`
    will be tagged as 'external' due to their undeclared dependency on
    Anchore's database.

    Args:
        name: the name of the label to be created.
        image: the complete docker image TAR, compatible with `docker save`.
            For a `container_image` target `:foo`, this would be `:foo.tar`,
            or for a `container_pull` repository `bar`, this would be
            `@bar//image:image.tar`. Referencing either of those targets
            directly, e.g., `:foo` or `@bar//image` will work by attempting
            to rewrite the label to tha appropriate `TAR` file.
        sbom: the Anchore Syft SBOM of the image, formatted as JSON. See
            `syft_sbom` rule.
        database: the Anchore CVE database against which to evaluate the image
            or SBOM. By default, we download the latest database and load it.
        fail_on_severity: the test built by this target shall fail if any
            CVE is found at this severity or higher. Defaults to "low",
            which may produce results that users consider to be false
            positives.
        only_fixed: if True, ignore any vulnerabilities that do not have
            fixes available, even if they are above the failure threshold.
            Defaults to False.
        ignore_cves: a list of strings representing CVEs that may exist
            in the image under test without being considered a failure,
            regardless of their severity.
        scope: if "Squashed", only scan the effective file system of
            the final image. If "All", scan every file in each layer,
            including those that are overwritten or deleted in the final
            image.
    """
    if image != None and sbom != None:
        fail("Exactly one of sbom and image must be provided.")
    elif image:
        sbom = name + "_sbom"
        syft_sbom(
            name = sbom,
            image = image,
        )
    elif sbom == None:
        fail("Exactly one of sbom and image must be provided.")

    # Ensure this test is tagged as external if it checks the internet
    # for its CVE Database.
    if database == None:
        if 'tags' in kwargs:
            if 'external' not in kwargs['tags']:
                kwargs['tags'].append('external')
        else:
            kwargs['tags'] = ['external']

    _grype_test(
        name = name,
        sbom = sbom,
        fail_on_severity = fail_on_severity,
        scope = scope,
        ignore_cves = ignore_cves,
        database = database,
        only_fixed = only_fixed,
        grype_ = select({
            "@bazel_tools//src/conditions:host_windows": "@grype_windows//:grype.exe",
            "@bazel_tools//src/conditions:darwin_x86_64": "@grype_darwin_amd64//:grype",
            "@bazel_tools//src/conditions:darwin_arm64": "@grype_darwin_arm64//:grype",
            "@bazel_tools//src/conditions:linux_x86_64": "@grype_linux_amd64//:grype",
            "@bazel_tools//src/conditions:linux_aarch64": "@grype_linux_arm64//:grype",
        }),
        is_windows = select({
            "@bazel_tools//src/conditions:host_windows": True,
            "//conditions:default": False,
        }),
        **kwargs,
    )
