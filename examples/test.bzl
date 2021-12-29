# com_github_hxtk_rules_anchore managed block; DO NOT EDIT
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
def grype_db():
    http_file(
        name = "cve_database",
        sha256 = "1f524f9a8ce7e1ff27441e761139cbf5ef2e7424861d9f4e6cac9d0992b34624",
        urls = [
            "https://toolbox-data.anchore.io/grype/databases/vulnerability-db_v3_2021-12-29T08:14:04Z.tar.gz",
        ],
    )
# END com_github_hxtk_rules_anchore managed block
