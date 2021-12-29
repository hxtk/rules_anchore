"""
Generated API documentation for Anchore rules.

Load these from `@com_github_hxtk_rules_anchore//anchore:defs.bzl`.
"""

load("anchore.bzl", _syft_sbom = "syft_sbom", _grype_test = "grype_test")
load("updater.bzl", _grype_updater = "grype_updater")

# Explicitly re-export the functions.
grype_updater = _grype_updater
syft_sbom = _syft_sbom
grype_test = _grype_test
