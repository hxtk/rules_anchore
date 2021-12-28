"""
Generated API documentation for Anchore rules.

Load these from `@com_github_hxtk_rules_anchore//anchore:anchore.bzl`.
"""

load("//anchore:anchore.bzl", _syft_sbom = "syft_sbom", _grype_test = "grype_test")

# Explicitly re-export the functions.
syft_sbom = _syft_sbom
grype_test = _grype_test
