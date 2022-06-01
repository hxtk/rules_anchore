load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def anchore_deps():
    http_archive(
        name = "grype_linux_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "8310224d2ddac10fc344e5cb565586e71416e42f6e0461da37e9ff2c95a59e4a",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.28.0/grype_0.28.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_linux_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "5f423868ec56dd6666ad64de03b324bbc3d5bacff7332c042a371201958d082d",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.28.0/grype_0.28.0_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "beadfe60b199f3bb22d7618629093f7c14dcea9b957887c42fc225dcfe02dc66",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.28.0/grype_0.28.0_darwin_amd64.zip",
        ],
    )

    http_archive(
        name = "grype_darwin_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "de30ff4bff721bf5e3c7d509174e1745b03e1157f8e2c63f4b79848cdf9a4ecc",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.28.0/grype_0.28.0_darwin_arm64.zip",
        ],
    )

    http_archive(
        name = "grype_windows",
        build_file_content = 'exports_files(["grype.exe"], visibility = ["//visibility:public"])',
        sha256 = "4e339eb138ca4269381856dded16d2599b005041a61b8076317f05631fba186b",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.28.0/grype_0.28.0_windows_amd64.zip",
        ],
    )

    http_archive(
        name = "syft_linux_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "0efee88a90e46f86be62f45cdeb416d2e0734dcfebc6f4fec6b41bcbbd2645fa",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.34.0/syft_0.34.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_linux_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "fc8e2cee22cc82a69a1919fa0b559f750fa7fca44bc8b576709bc5f2bcab481c",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.34.0/syft_0.34.0_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "052915bde04071ec5e60ad20181ff74f9c72d474a857164560a3c7b40dd4a832",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.34.0/syft_0.34.0_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "84dd287cebba6c0278a883dbb233c0ae38b0c9c1d272e01a4c7046bba46a9c07",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.34.0/syft_0.34.0_darwin_arm64.zip",
        ],
    )

    http_archive(
        name = "syft_windows",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "ffbaffa938dbb8c3510c59ae0b96bda2d5f90c4ad7af9077d6480fac1ac6efaa",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.34.0/syft_0.34.0_windows_amd64.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "io_bazel_stardoc",
        sha256 = "c9794dcc8026a30ff67cf7cf91ebe245ca294b20b071845d12c192afe243ad72",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.5.0/stardoc-0.5.0.tar.gz",
            "https://github.com/bazelbuild/stardoc/releases/download/0.5.0/stardoc-0.5.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
        ],
        sha256 = "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_docker",
        sha256 = "59536e6ae64359b716ba9c46c39183403b01eabfbd57578e84398b4829ca499a",
        strip_prefix = "rules_docker-0.22.0",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.22.0/rules_docker-v0.22.0.tar.gz"],
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_protobuf",
	sha256 = "25f1292d4ea6666f460a2a30038eef121e6c3937ae0f61d610611dfb14b0bd32",
        strip_prefix = "protobuf-3.19.1",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/refs/tags/v3.19.1.zip"],
    )
