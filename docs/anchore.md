<!-- Generated with Stardoc, Do Not Edit! -->


Generated API documentation for Anchore rules.

Load these from `@com_github_hxtk_rules_anchore//anchore:defs.bzl`.

<a id="#grype_test"></a>

## grype_test

<pre>
grype_test(<a href="#grype_test-name">name</a>, <a href="#grype_test-image">image</a>, <a href="#grype_test-sbom">sbom</a>, <a href="#grype_test-database">database</a>, <a href="#grype_test-ignore_cves">ignore_cves</a>, <a href="#grype_test-only_fixed">only_fixed</a>, <a href="#grype_test-fail_on_severity">fail_on_severity</a>, <a href="#grype_test-scope">scope</a>, <a href="#grype_test-kwargs">kwargs</a>)
</pre>

Scan a docker image for CVEs.

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


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="grype_test-name"></a>name |  the name of the label to be created.   |  none |
| <a id="grype_test-image"></a>image |  the complete docker image TAR, compatible with <code>docker save</code>. For a <code>container_image</code> target <code>:foo</code>, this would be <code>:foo.tar</code>, or for a <code>container_pull</code> repository <code>bar</code>, this would be <code>@bar//image:image.tar</code>. Referencing either of those targets directly, e.g., <code>:foo</code> or <code>@bar//image</code> will work by attempting to rewrite the label to tha appropriate <code>TAR</code> file.   |  <code>None</code> |
| <a id="grype_test-sbom"></a>sbom |  the Anchore Syft SBOM of the image, formatted as JSON. See <code>syft_sbom</code> rule.   |  <code>None</code> |
| <a id="grype_test-database"></a>database |  the Anchore CVE database against which to evaluate the image or SBOM. By default, we download the latest database and load it.   |  <code>None</code> |
| <a id="grype_test-ignore_cves"></a>ignore_cves |  a list of strings representing CVEs that may exist in the image under test without being considered a failure, regardless of their severity.   |  <code>[]</code> |
| <a id="grype_test-only_fixed"></a>only_fixed |  if True, ignore any vulnerabilities that do not have fixes available, even if they are above the failure threshold. Defaults to False.   |  <code>False</code> |
| <a id="grype_test-fail_on_severity"></a>fail_on_severity |  the test built by this target shall fail if any CVE is found at this severity or higher. Defaults to "low", which may produce results that users consider to be false positives.   |  <code>"low"</code> |
| <a id="grype_test-scope"></a>scope |  if "Squashed", only scan the effective file system of the final image. If "All", scan every file in each layer, including those that are overwritten or deleted in the final image.   |  <code>"Squashed"</code> |
| <a id="grype_test-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="#grype_updater"></a>

## grype_updater

<pre>
grype_updater(<a href="#grype_updater-name">name</a>, <a href="#grype_updater-output">output</a>, <a href="#grype_updater-version">version</a>, <a href="#grype_updater-repository_name">repository_name</a>, <a href="#grype_updater-listing_url">listing_url</a>, <a href="#grype_updater-kwargs">kwargs</a>)
</pre>

Automatically update Grype database.

Run this target with `bazel run` to update your Anchore CVE database
to be used by these rules using Bazel.

For example, in `//:BUILD`:

```starlark
load("com_github_hxtk_rules_anchore//anchore:defs.bzl", "grype_updater")

grype_updater(
    name = "update_grype",
    output = "deps.bzl%grype_db",
)
```


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="grype_updater-name"></a>name |  the name of the label to be created. This is the target you will invoke with <code>bazel run</code>.   |  none |
| <a id="grype_updater-output"></a>output |  the WORKSPACE or macro file in which the repository rule shall be defined. If a macro file is specified, use "%" followed by some name to indicate the name of the macro to be created, e.g., from the example above <code>deps.bzl%grype_database</code> will result in deps.bzl containing a <code>grype_db</code> macro which, when called, will define the repository rule for a Grype CVE database. This is consistent with the definitions used in <code>bazel-gazelle</code>. Previously, the canonical separator was "#". It is preserved for compatibility. If no separator is used, the repository will be defined at the top level of whatever file is specified.   |  <code>"WORKSPACE"</code> |
| <a id="grype_updater-version"></a>version |  the database format major version. This should generally be left as the default, as it must be chosen to be compatible with the version of Grype in this package.   |  <code>3</code> |
| <a id="grype_updater-repository_name"></a>repository_name |  the name of the repository to be created. You will reference the database as <code>@[repository_name]//file</code> in the <code>database</code> field of a <code>grype_test</code> rule. For example, with the default value, you would use <code>@grype_database//file</code>.   |  <code>"grype_database"</code> |
| <a id="grype_updater-listing_url"></a>listing_url |  the URL from which the list of available databases shall be fetched. Defaults to the Anchore listing normally used by Grype.   |  <code>None</code> |
| <a id="grype_updater-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


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


