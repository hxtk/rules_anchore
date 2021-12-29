load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

def anchore_extra_deps(configure_go=True):
    if configure_go:
        go_rules_dependencies()
        go_register_toolchains(version = "1.17.1")
