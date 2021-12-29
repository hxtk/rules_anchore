<!-- Generated with Stardoc, Do Not Edit! -->


Generated API documentation for Anchore rules.

Load these from `@com_github_hxtk_rules_anchore//anchore:anchore.bzl`.

<a id="#grype_test"></a>

## grype_test

<pre>
grype_test(<a href="#grype_test-name">name</a>, <a href="#grype_test-image">image</a>, <a href="#grype_test-sbom">sbom</a>, <a href="#grype_test-only_fixed">only_fixed</a>, <a href="#grype_test-database">database</a>, <a href="#grype_test-fail_on_severity">fail_on_severity</a>, <a href="#grype_test-scope">scope</a>, <a href="#grype_test-kwargs">kwargs</a>)
</pre>

Scan a docker image for CVEs.

Uses Anchore Grype to scan a docker image or Anchore Syft SBOM for
known vulnerabilities, and fails if vulnerabilities exceeding a
severity threshold are found.

The user is required to provide 'name' as well as exactly one of
'image' or 'sbom'. All other fields have sane defaults.

If 'image' is passed in, a `syft_sbom` rule named `[name]_sbom` is
implicitly created, and the `grype_test` uses the `sbom` produced
by that target.

All tests created by this macro without a value passed for 'database'
will be tagged as 'external' due to their undeclared dependency on
Anchore's database.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="grype_test-name"></a>name |  the name of the label to be created.   |  none |
| <a id="grype_test-image"></a>image |  the complete docker image TAR, compatible with <code>docker save</code>; a label for a <code>container_image</code> rule; or a label for an imported image (i.e., <code>@foo//image</code> for a <code>container_pull(name = "foo", ...)</code> repository rule.   |  <code>None</code> |
| <a id="grype_test-sbom"></a>sbom |  the Anchore Syft SBOM of the image, formatted as JSON. See <code>syft_sbom</code> rule above.   |  <code>None</code> |
| <a id="grype_test-only_fixed"></a>only_fixed |  if True, ignore any vulnerabilities that do not have fixes available, even if they are above the failure threshold. Defaults to False.   |  <code>False</code> |
| <a id="grype_test-database"></a>database |  the Anchore CVE database against which to evaluate the image or SBOM. By default, we download the latest database and load it.   |  <code>None</code> |
| <a id="grype_test-fail_on_severity"></a>fail_on_severity |  the test built by this target shall fail if any CVE is found at this severity or higher. Defaults to "low", which may produce results that users consider to be false positives.   |  <code>"low"</code> |
| <a id="grype_test-scope"></a>scope |  if "Squashed", only scan the effective file system of the final image. If "All", scan every file in each layer, including those that are overwritten or deleted in the final image.   |  <code>"Squashed"</code> |
| <a id="grype_test-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#syft_sbom"></a>

## syft_sbom

<pre>
syft_sbom(<a href="#syft_sbom-name">name</a>, <a href="#syft_sbom-image">image</a>, <a href="#syft_sbom-scope">scope</a>, <a href="#syft_sbom-kwargs">kwargs</a>)
</pre>

Create an SBOM for an image.

Uses Anchore Syft to create a Software Bill of Materials for a container
image.

The user is required to provide `name` and `image`; all other fields have
sane defaults.

Note that if one is also creating a `grype_test` rule for the same image,
one may specify this target as the `sbom` for that `grype_test`, or else
use the `[name]_sbom` target implicitly created by `grype_test` in lieu of
explicitly invoking this macro.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="syft_sbom-name"></a>name |  the name of the label to be created.   |  none |
| <a id="syft_sbom-image"></a>image |  the complete docker image TAR, compatible with <code>docker save</code>; a label for a <code>container_image</code> rule; or a label for an imported image (i.e., <code>@foo//image</code> for a <code>container_pull(name = "foo", ...)</code> repository rule.   |  none |
| <a id="syft_sbom-scope"></a>scope |  if "Squashed", only scan the effective file system of the final image. If "All", scan every file in each layer, including those that are overwritten or deleted in the final image.   |  <code>"Squashed"</code> |
| <a id="syft_sbom-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


