load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def anchore_deps():
    http_archive(
        name = "grype_linux_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "5f9e8f3ddb914a0252c945468b986236ba9b50a5bd89d8a7d3adfdc1a2ca6834",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.51.0/grype_0.51.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_linux_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "2b74e9cf73600d8846822317261da912ed50128202096e4b234372835b54cff2",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.51.0/grype_0.51.0_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "d3ce446526a4cafb55d4b25de9cdb4bab8f30a141a12ad0875cef9f105cf3477",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.62.3/grype_0.62.3_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "aa5dbcdc459792b3e91be826d6db2e306b247f79518cea225b51088bbd4b6210",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.62.3/grype_0.62.3_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_windows",
        build_file_content = 'exports_files(["grype.exe"], visibility = ["//visibility:public"])',
        sha256 = "d126dc36beec2576ad2cc075412de95ad20926212c0ad58d4e2a52d849af4b41",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.51.0/grype_0.51.0_windows_amd64.zip",
        ],
    )

    http_archive(
        name = "syft_linux_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "063e5c5a1762f0850363bd05de80d008c7bca3f63d9f98889eba4fddf0f2f488",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.60.1/syft_0.60.1_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_linux_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "5049a8a909d520a4508e89ee01ae60de3839dbc6c3c09c8b535810f9f08a18e0",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.60.1/syft_0.60.1_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "a3a4542afdba0139b2f7bbb84e21bdf5e6813acfbe4062a2eb6ae3fb0821da8c",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.60.1/syft_0.60.1_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "a03dfb60a782535aced6084c6604a44e7e4ee5cd31c8294089d98ea1aeec3baf",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.60.1/syft_0.60.1_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_windows",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "24090b451c9d1e39287e885e28ab011d3178e78ef57bfe719b5d8ca11cdda608",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.60.1/syft_0.60.1_windows_amd64.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "io_bazel_stardoc",
        sha256 = "3fd8fec4ddec3c670bd810904e2e33170bedfe12f90adf943508184be458c8bb",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.5.3/stardoc-0.5.3.tar.gz",
            "https://github.com/bazelbuild/stardoc/releases/download/0.5.3/stardoc-0.5.3.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_docker",
        strip_prefix = "rules_docker-0.25.0",
        sha256 = "b1e80761a8a8243d03ebca8845e9cc1ba6c82ce7c5179ce2b295cd36f7e394bf",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.25.0/rules_docker-v0.25.0.tar.gz"],
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "099a9fb96a376ccbbb7d291ed4ecbdfd42f6bc822ab77ae6f1b5cb9e914e94fa",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "448e37e0dbf61d6fa8f00aaa12d191745e14f07c31cabfa731f0c8e8a4f41b97",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.28.0/bazel-gazelle-v0.28.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.28.0/bazel-gazelle-v0.28.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_protobuf",
        strip_prefix = "protobuf-21.9",
        sha256 = "5babb8571f1cceafe0c18e13ddb3be556e87e12ceea3463d6b0d0064e6cc1ac3",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/refs/tags/v21.9.zip"],
    )
