load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def pointless_macro():
    pass
# com_github_hxtk_rules_anchore managed block; DO NOT EDIT
def grype_db():
    http_file(
        name = "grype_database",
        sha256 = "46212c1a8fa8298bc403609d1e70ffe08fd4846e764218400acd46aa2db4b5ee",
        urls = [
            "https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v3_2021-12-30T08:13:26Z.tar.gz",
        ],
    )
# END com_github_hxtk_rules_anchore managed block
