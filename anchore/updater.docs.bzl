"""
Generated API documentation for Anchore rules.

Load these from `@com_github_hxtk_rules_anchore//anchore:updater.bzl`.
"""

load("//anchore:updater.bzl", _grype_updater = "grype_updater")

# Explicitly re-export the functions.
grype_updater = _grype_updater
