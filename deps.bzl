load("@bazel_gazelle//:deps.bzl", "go_repository")

def anchore_deps():
    go_repository(
        name = "ag_pack_amqp",
        importpath = "pack.ag/amqp",
        sum = "h1:cuNDWLUTbKRtEZwhB0WQBXf9pGbm87pUBXQhvcFxBWg=",
        version = "v0.11.2",
    )
    go_repository(
        name = "cc_mvdan_interfacer",
        importpath = "mvdan.cc/interfacer",
        sum = "h1:WX1yoOaKQfddO/mLzdV4wptyWgoH/6hwLs7QHTixo0I=",
        version = "v0.0.0-20180901003855-c20040233aed",
    )
    go_repository(
        name = "cc_mvdan_lint",
        importpath = "mvdan.cc/lint",
        sum = "h1:DxJ5nJdkhDlLok9K6qO+5290kphDJbHOQO1DFFFTeBo=",
        version = "v0.0.0-20170908181259-adc824a0674b",
    )
    go_repository(
        name = "cc_mvdan_unparam",
        importpath = "mvdan.cc/unparam",
        sum = "h1:kAREL6MPwpsk1/PQPFD3Eg7WAQR5mPTWZJaBiG5LDbY=",
        version = "v0.0.0-20200501210554-b37ab49443f7",
    )
    go_repository(
        name = "co_honnef_go_tools",
        importpath = "honnef.co/go/tools",
        sum = "h1:UoveltGrhghAA7ePc+e+QYDHXrBps2PqFZiHkGR/xK8=",
        version = "v0.0.1-2020.1.4",
    )
    go_repository(
        name = "com_github_acarl005_stripansi",
        importpath = "github.com/acarl005/stripansi",
        sum = "h1:licZJFw2RwpHMqeKTCYkitsPqHNxTmd4SNR5r94FGM8=",
        version = "v0.0.0-20180116102854-5a71ef0e047d",
    )
    go_repository(
        name = "com_github_adrg_xdg",
        importpath = "github.com/adrg/xdg",
        sum = "h1:VSVdnH7cQ7V+B33qSJHTCRlNgra1607Q8PzEmnvb2Ic=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_alecthomas_jsonschema",
        importpath = "github.com/alecthomas/jsonschema",
        sum = "h1:Lw9q+WyJLFOR+AULchS5/2GKfM+6gOh4szzizdfH3MU=",
        version = "v0.0.0-20210301060011-54c507b6f074",
    )
    go_repository(
        name = "com_github_alecthomas_kingpin",
        importpath = "github.com/alecthomas/kingpin",
        sum = "h1:5svnBTFgJjZvGKyYBtMB0+m5wvrbUHiqye8wRJMlnYI=",
        version = "v2.2.6+incompatible",
    )
    go_repository(
        name = "com_github_alecthomas_template",
        importpath = "github.com/alecthomas/template",
        sum = "h1:JYp7IbQjafoB+tBA3gMyHYHrpOtNuDiK/uB5uXxq5wM=",
        version = "v0.0.0-20190718012654-fb15b899a751",
    )
    go_repository(
        name = "com_github_alecthomas_units",
        importpath = "github.com/alecthomas/units",
        sum = "h1:UQZhZ2O0vMHr2cI+DC1Mbh0TJxzA3RcLoMsFw+aXw7E=",
        version = "v0.0.0-20190924025748-f65c72e2690d",
    )
    go_repository(
        name = "com_github_alexflint_go_filemutex",
        importpath = "github.com/alexflint/go-filemutex",
        sum = "h1:AMzIhMUqU3jMrZiTuW0zkYeKlKDAFD+DG20IoO421/Y=",
        version = "v0.0.0-20171022225611-72bdc8eae2ae",
    )
    go_repository(
        name = "com_github_alicebob_sqlittle",
        importpath = "github.com/alicebob/sqlittle",
        sum = "h1:vgYt0nAjhdf/hg52MjKJ84g/uTzBPfrvI+VUBrIghxA=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_anchore_client_go",
        importpath = "github.com/anchore/client-go",
        sum = "h1:DYssiUV1pBmKqzKsm4mqXx8artqC0Q8HgZsVI3lMsAg=",
        version = "v0.0.0-20210222170800-9c70f9b80bcf",
    )
    go_repository(
        name = "com_github_anchore_go_presenter",
        importpath = "github.com/anchore/go-presenter",
        sum = "h1:mDLUAkgXsV5Z8D0EEj8eS6FBekolV/A+Xxbs9054bPw=",
        version = "v0.0.0-20211102174526-0dbf20f6c7fa",
    )
    go_repository(
        name = "com_github_anchore_go_rpmdb",
        importpath = "github.com/anchore/go-rpmdb",
        sum = "h1:C9W/LAydEz/qdUhx1MdjO9l8NEcFKYknkxDVyo9LAoM=",
        version = "v0.0.0-20210914181456-a9c52348da63",
    )
    go_repository(
        name = "com_github_anchore_go_testutils",
        importpath = "github.com/anchore/go-testutils",
        sum = "h1:VzprUTpc0vW0nnNKJfJieyH/TZ9UYAnTZs5/gHTdAe8=",
        version = "v0.0.0-20200925183923-d5f45b0d3c04",
    )
    go_repository(
        name = "com_github_anchore_go_version",
        importpath = "github.com/anchore/go-version",
        sum = "h1:rmZG77uXgE+o2gozGEBoUMpX27lsku+xrMwlmBZJtbg=",
        version = "v1.2.2-0.20210903204242-51efa5b487c4",
    )
    go_repository(
        name = "com_github_anchore_grype",
        importpath = "github.com/anchore/grype",
        sum = "h1:xDQBBgmbjfmYriJVYX0EIkYWf8LJdjm6uG+1cw8gkuQ=",
        version = "v0.27.2",
    )
    go_repository(
        name = "com_github_anchore_grype_db",
        importpath = "github.com/anchore/grype-db",
        sum = "h1:Jsv3lw2xQpFYFEARz7Il6uxXWMIS9fQR4b7p4ceGopI=",
        version = "v0.0.0-20211207213615-1bcbb779ee96",
    )
    go_repository(
        name = "com_github_anchore_packageurl_go",
        importpath = "github.com/anchore/packageurl-go",
        sum = "h1:K9LfnxwhqvihqU0+MF325FNy7fsKV9EGaUxdfR4gnWk=",
        version = "v0.0.0-20210922164639-b3fa992ebd29",
    )
    go_repository(
        name = "com_github_anchore_stereoscope",
        importpath = "github.com/anchore/stereoscope",
        sum = "h1:pcMFN7wjIQIxdZm8NA0R3JiRRFn5Eyx9mhagHOVS4Bw=",
        version = "v0.0.0-20211203160213-5a5e323a5c89",
    )
    go_repository(
        name = "com_github_anchore_syft",
        importpath = "github.com/anchore/syft",
        sum = "h1:3xeuAzR6m7iHzMvA9KvxzMTGVZAqScfhDyii//dsHSQ=",
        version = "v0.32.2",
    )
    go_repository(
        name = "com_github_andreyvit_diff",
        importpath = "github.com/andreyvit/diff",
        sum = "h1:bvNMNQO63//z+xNgfBlViaCIJKLlCJ6/fmUseuG0wVQ=",
        version = "v0.0.0-20170406064948-c7f18ee00883",
    )
    go_repository(
        name = "com_github_andybalholm_brotli",
        importpath = "github.com/andybalholm/brotli",
        sum = "h1:V7DdXeJtZscaqfNuAdSRuRFzuiKlHSC/Zh3zl9qY3JY=",
        version = "v1.0.4",
    )
    go_repository(
        name = "com_github_andybalholm_cascadia",
        importpath = "github.com/andybalholm/cascadia",
        sum = "h1:BuuO6sSfQNFRu1LppgbD25Hr2vLYW25JvxHs5zzsLTo=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_antihax_optional",
        importpath = "github.com/antihax/optional",
        sum = "h1:xK2lYat7ZLaVVcIuj82J8kIro4V6kDe0AUDFboUCwcg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_apex_log",
        importpath = "github.com/apex/log",
        sum = "h1:1fyfbPvUwD10nMoh3hY6MXzvZShJQn9/ck7ATgAt5pA=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_apex_logs",
        importpath = "github.com/apex/logs",
        sum = "h1:KmEBVwfDUOTFcBO8cfkJYwdQ5487UZSN+GteOGPmiro=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_aphistic_golf",
        importpath = "github.com/aphistic/golf",
        sum = "h1:2KLQMJ8msqoPHIPDufkxVcoTtcmE5+1sL9950m4R9Pk=",
        version = "v0.0.0-20180712155816-02c07f170c5a",
    )
    go_repository(
        name = "com_github_aphistic_sweet",
        importpath = "github.com/aphistic/sweet",
        sum = "h1:I4z+fAUqvKfvZV/CHi5dV0QuwbmIvYYFDjG0Ss5QpAs=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_armon_circbuf",
        importpath = "github.com/armon/circbuf",
        sum = "h1:QEF07wC0T1rKkctt1RINW/+RMTVmiwxETico2l3gxJA=",
        version = "v0.0.0-20150827004946-bbbad097214e",
    )
    go_repository(
        name = "com_github_armon_consul_api",
        importpath = "github.com/armon/consul-api",
        sum = "h1:G1bPvciwNyF7IUmKXNt9Ak3m6u9DE1rF+RmtIkBpVdA=",
        version = "v0.0.0-20180202201655-eb2c6b5be1b6",
    )
    go_repository(
        name = "com_github_armon_go_metrics",
        importpath = "github.com/armon/go-metrics",
        sum = "h1:FR+drcQStOe+32sYyJYyZ7FIdgoGGBnwLl+flodp8Uo=",
        version = "v0.3.10",
    )
    go_repository(
        name = "com_github_armon_go_radix",
        importpath = "github.com/armon/go-radix",
        sum = "h1:F4z6KzEeeQIMeLFa97iZU6vupzoecKdU5TX24SNppXI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_asaskevich_govalidator",
        importpath = "github.com/asaskevich/govalidator",
        sum = "h1:idn718Q4B6AGu/h5Sxe66HYVdqdGu2l9Iebqhi/AEoA=",
        version = "v0.0.0-20190424111038-f61b66f89f4a",
    )
    go_repository(
        name = "com_github_aws_aws_sdk_go",
        importpath = "github.com/aws/aws-sdk-go",
        sum = "h1:nKjQbpXhdImctBh1e0iLg9iQW/X297LPPuY/9f92R2k=",
        version = "v1.31.6",
    )
    go_repository(
        name = "com_github_aybabtme_rgbterm",
        importpath = "github.com/aybabtme/rgbterm",
        sum = "h1:WWB576BN5zNSZc/M9d/10pqEx5VHNhaQ/yOVAkmj5Yo=",
        version = "v0.0.0-20170906152045-cc83f3b3ce59",
    )
    go_repository(
        name = "com_github_azure_azure_amqp_common_go_v2",
        importpath = "github.com/Azure/azure-amqp-common-go/v2",
        sum = "h1:+QbFgmWCnPzdaRMfsI0Yb6GrRdBj5jVL8N3EXuEUcBQ=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_azure_azure_pipeline_go",
        importpath = "github.com/Azure/azure-pipeline-go",
        sum = "h1:6oiIS9yaG6XCCzhgAgKFfIWyo4LLCiDhZot6ltoThhY=",
        version = "v0.2.2",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go",
        importpath = "github.com/Azure/azure-sdk-for-go",
        sum = "h1:PAHkmPqd/vQV4LJcqzEUM1elCyTMWjbrO8oFMl0dvBE=",
        version = "v42.3.0+incompatible",
    )
    go_repository(
        name = "com_github_azure_azure_service_bus_go",
        importpath = "github.com/Azure/azure-service-bus-go",
        sum = "h1:G1qBLQvHCFDv9pcpgwgFkspzvnGknJRR0PYJ9ytY/JA=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_azure_azure_storage_blob_go",
        importpath = "github.com/Azure/azure-storage-blob-go",
        sum = "h1:53qhf0Oxa0nOjgbDeeYPUeyiNmafAFEY95rZLK0Tj6o=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_azure_go_ansiterm",
        importpath = "github.com/Azure/go-ansiterm",
        sum = "h1:UQHMgLO+TxOElx5B5HZ4hJQsoJ/PvUvKRhJHDQXO8P8=",
        version = "v0.0.0-20210617225240-d185dfc1b5a1",
    )
    go_repository(
        name = "com_github_azure_go_autorest",
        importpath = "github.com/Azure/go-autorest",
        sum = "h1:V5VMDjClD3GiElqLWO7mz2MxNAK/vTfRHdAubSIPRgs=",
        version = "v14.2.0+incompatible",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest",
        importpath = "github.com/Azure/go-autorest/autorest",
        sum = "h1:eVvIXUKiTgv++6YnWb42DUA1YL7qDugnKP0HljexdnQ=",
        version = "v0.11.1",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_adal",
        importpath = "github.com/Azure/go-autorest/autorest/adal",
        sum = "h1:Y3bBUV4rTuxenJJs41HU3qmqsb+auo+a3Lz+PlJPpL0=",
        version = "v0.9.5",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_azure_auth",
        importpath = "github.com/Azure/go-autorest/autorest/azure/auth",
        sum = "h1:iM6UAvjR97ZIeR93qTcwpKNMpV+/FTWjwEbuPD495Tk=",
        version = "v0.4.2",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_azure_cli",
        importpath = "github.com/Azure/go-autorest/autorest/azure/cli",
        sum = "h1:LXl088ZQlP0SBppGFsRZonW6hSvwgL5gRByMbvUbx8U=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_date",
        importpath = "github.com/Azure/go-autorest/autorest/date",
        sum = "h1:7gUk1U5M/CQbp9WoqinNzJar+8KY+LPI6wiWrP/myHw=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_mocks",
        importpath = "github.com/Azure/go-autorest/autorest/mocks",
        sum = "h1:K0laFcLE6VLTOwNgSxaGbUcLPuGXlNkbVvq4cW4nIHk=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_to",
        importpath = "github.com/Azure/go-autorest/autorest/to",
        sum = "h1:zebkZaadz7+wIQYgC7GXaz3Wb28yKYfVkkBKwc38VF8=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_azure_go_autorest_autorest_validation",
        importpath = "github.com/Azure/go-autorest/autorest/validation",
        sum = "h1:15vMO4y76dehZSq7pAaOLQxC6dZYsSrj2GQpflyM/L4=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_azure_go_autorest_logger",
        importpath = "github.com/Azure/go-autorest/logger",
        sum = "h1:e4RVHVZKC5p6UANLJHkM4OfR1UKZPj8Wt8Pcx+3oqrE=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_azure_go_autorest_tracing",
        importpath = "github.com/Azure/go-autorest/tracing",
        sum = "h1:TYi4+3m5t6K48TGI9AUdb+IzbnSxvnvUMfuitfgcfuo=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_beorn7_perks",
        importpath = "github.com/beorn7/perks",
        sum = "h1:VlbKKnNfV8bJzeqoa4cOKqO6bYr3WgKZxO8Z16+hsOM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_bgentry_go_netrc",
        importpath = "github.com/bgentry/go-netrc",
        sum = "h1:xDfNPAt8lFiC1UJrqV3uuy861HCTo708pDMbjHHdCas=",
        version = "v0.0.0-20140422174119-9fd32a8b3d3d",
    )
    go_repository(
        name = "com_github_bgentry_speakeasy",
        importpath = "github.com/bgentry/speakeasy",
        sum = "h1:ByYyxL9InA1OWqxJqqp2A5pYHUrCiAL6K3J+LKSsQkY=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_bitly_go_simplejson",
        importpath = "github.com/bitly/go-simplejson",
        sum = "h1:6IH+V8/tVMab511d5bn4M7EwGXZf9Hj6i2xSwkNEM+Y=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_bits_and_blooms_bitset",
        importpath = "github.com/bits-and-blooms/bitset",
        sum = "h1:Kn4yilvwNtMACtf1eYDlG8H77R07mZSPbMjLyS07ChA=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_bketelsen_crypt",
        importpath = "github.com/bketelsen/crypt",
        sum = "h1:w/jqZtC9YD4DS/Vp9GhWfWcCpuAL58oTnLoI8vE9YHU=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_blakesmith_ar",
        importpath = "github.com/blakesmith/ar",
        sum = "h1:m935MPodAbYS46DG4pJSv7WO+VECIWUQ7OJYSoTrMh4=",
        version = "v0.0.0-20190502131153-809d4375e1fb",
    )
    go_repository(
        name = "com_github_blang_semver",
        importpath = "github.com/blang/semver",
        sum = "h1:cQNTCjp13qL8KC3Nbxr/y2Bqb63oX6wdnnjpJbkM4JQ=",
        version = "v3.5.1+incompatible",
    )
    go_repository(
        name = "com_github_bmatcuk_doublestar_v2",
        importpath = "github.com/bmatcuk/doublestar/v2",
        sum = "h1:6I6oUiT/sU27eE2OFcWqBhL1SwjyvQuOssxT4a1yidI=",
        version = "v2.0.4",
    )
    go_repository(
        name = "com_github_bmatcuk_doublestar_v4",
        importpath = "github.com/bmatcuk/doublestar/v4",
        sum = "h1:X0krlUVAVmtr2cRoTqR8aDMrDqnB36ht8wpWTiQ3jsA=",
        version = "v4.0.2",
    )
    go_repository(
        name = "com_github_bmizerany_assert",
        importpath = "github.com/bmizerany/assert",
        sum = "h1:DDGfHa7BWjL4YnC6+E63dPcxHo2sUxDIu8g3QgEJdRY=",
        version = "v0.0.0-20160611221934-b7ed37b82869",
    )
    go_repository(
        name = "com_github_bombsimon_wsl_v2",
        importpath = "github.com/bombsimon/wsl/v2",
        sum = "h1:/DdSteYCq4lPX+LqDg7mdoxm14UxzZPoDT0taYc3DTU=",
        version = "v2.2.0",
    )
    go_repository(
        name = "com_github_bombsimon_wsl_v3",
        importpath = "github.com/bombsimon/wsl/v3",
        sum = "h1:E5SRssoBgtVFPcYWUOFJEcgaySgdtTNYzsSKDOY7ss8=",
        version = "v3.1.0",
    )
    go_repository(
        name = "com_github_bradleyjkemp_cupaloy_v2",
        importpath = "github.com/bradleyjkemp/cupaloy/v2",
        sum = "h1:knToPYa2xtfg42U3I6punFEjaGFKWQRXJwj0JTv4mTs=",
        version = "v2.6.0",
    )
    go_repository(
        name = "com_github_bshuster_repo_logrus_logstash_hook",
        importpath = "github.com/bshuster-repo/logrus-logstash-hook",
        sum = "h1:pgAtgj+A31JBVtEHu2uHuEx0n+2ukqUJnS2vVe5pQNA=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_buger_jsonparser",
        importpath = "github.com/buger/jsonparser",
        sum = "h1:y853v6rXx+zefEcjET3JuKAqvhj+FKflQijjeaSv2iA=",
        version = "v0.0.0-20180808090653-f4dd9f5a6b44",
    )
    go_repository(
        name = "com_github_bugsnag_bugsnag_go",
        importpath = "github.com/bugsnag/bugsnag-go",
        sum = "h1:rFt+Y/IK1aEZkEHchZRSq9OQbsSzIT/OrI8YFFmRIng=",
        version = "v0.0.0-20141110184014-b1d153021fcd",
    )
    go_repository(
        name = "com_github_bugsnag_osext",
        importpath = "github.com/bugsnag/osext",
        sum = "h1:otBG+dV+YK+Soembjv71DPz3uX/V/6MMlSyD9JBQ6kQ=",
        version = "v0.0.0-20130617224835-0dd3f918b21b",
    )
    go_repository(
        name = "com_github_bugsnag_panicwrap",
        importpath = "github.com/bugsnag/panicwrap",
        sum = "h1:nvj0OLI3YqYXer/kZD8Ri1aaunCxIEsOst1BVJswV0o=",
        version = "v0.0.0-20151223152923-e2c28503fcd0",
    )
    go_repository(
        name = "com_github_burntsushi_toml",
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:WXkYYl6Yr3qBf1K79EBnL4mak0OimBfB0XUf9Vl28OQ=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_burntsushi_xgb",
        importpath = "github.com/BurntSushi/xgb",
        sum = "h1:1BDTz0u9nC3//pOCMdNH+CiXJVYJh5UQNCOBG7jbELc=",
        version = "v0.0.0-20160522181843-27f122750802",
    )
    go_repository(
        name = "com_github_caarlos0_ctrlc",
        importpath = "github.com/caarlos0/ctrlc",
        sum = "h1:2DtF8GSIcajgffDFJzyG15vO+1PuBWOMUdFut7NnXhw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_campoy_unique",
        importpath = "github.com/campoy/unique",
        sum = "h1:V9a67dfYqPLAvzk5hMQOXYJlZ4SLIXgyKIE+ZiHzgGQ=",
        version = "v0.0.0-20180121183637-88950e537e7e",
    )
    go_repository(
        name = "com_github_cavaliercoder_go_cpio",
        importpath = "github.com/cavaliercoder/go-cpio",
        sum = "h1:hHg27A0RSSp2Om9lubZpiMgVbvn39bsUmW9U5h0twqc=",
        version = "v0.0.0-20180626203310-925f9528c45e",
    )
    go_repository(
        name = "com_github_cenkalti_backoff_v4",
        importpath = "github.com/cenkalti/backoff/v4",
        sum = "h1:G2HAfAmvm/GcKan2oOQpBXOd2tT2G57ZnZGWa1PxPBQ=",
        version = "v4.1.1",
    )
    go_repository(
        name = "com_github_census_instrumentation_opencensus_proto",
        importpath = "github.com/census-instrumentation/opencensus-proto",
        sum = "h1:t/LhUZLVitR1Ow2YOnduCsavhwFUklBMoGVYUCqmCqk=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_cespare_xxhash",
        importpath = "github.com/cespare/xxhash",
        sum = "h1:a6HrQnmkObjyL+Gs60czilIUGqrzKutQD6XZog3p+ko=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cespare_xxhash_v2",
        importpath = "github.com/cespare/xxhash/v2",
        sum = "h1:YRXhKfTDauu4ajMg1TPgFO5jnlC2HCbmLXMcTG5cbYE=",
        version = "v2.1.2",
    )
    go_repository(
        name = "com_github_checkpoint_restore_go_criu_v4",
        importpath = "github.com/checkpoint-restore/go-criu/v4",
        sum = "h1:WW2B2uxx9KWF6bGlHqhm8Okiafwwx7Y2kcpn8lCpjgo=",
        version = "v4.1.0",
    )
    go_repository(
        name = "com_github_checkpoint_restore_go_criu_v5",
        importpath = "github.com/checkpoint-restore/go-criu/v5",
        sum = "h1:TW8f/UvntYoVDMN1K2HlT82qH1rb0sOjpGw3m6Ym+i4=",
        version = "v5.0.0",
    )
    go_repository(
        name = "com_github_cheggaaa_pb",
        importpath = "github.com/cheggaaa/pb",
        sum = "h1:wIkZHkNfC7R6GI5w7l/PdAdzXzlrbcI3p8OAlnkTsnc=",
        version = "v1.0.27",
    )
    go_repository(
        name = "com_github_chzyer_logex",
        importpath = "github.com/chzyer/logex",
        sum = "h1:Swpa1K6QvQznwJRcfTfQJmTE72DqScAa40E+fbHEXEE=",
        version = "v1.1.10",
    )
    go_repository(
        name = "com_github_chzyer_readline",
        importpath = "github.com/chzyer/readline",
        sum = "h1:fY5BOSpyZCqRo5OhCuC+XN+r/bBCmeuuJtjz+bCNIf8=",
        version = "v0.0.0-20180603132655-2972be24d48e",
    )
    go_repository(
        name = "com_github_chzyer_test",
        importpath = "github.com/chzyer/test",
        sum = "h1:q763qf9huN11kDQavWsoZXJNW3xEE4JJyHa5Q25/sd8=",
        version = "v0.0.0-20180213035817-a1ea475d72b1",
    )
    go_repository(
        name = "com_github_cilium_ebpf",
        importpath = "github.com/cilium/ebpf",
        sum = "h1:iHsfF/t4aW4heW2YKfeHrVPGdtYTL4C4KocpM8KTSnI=",
        version = "v0.6.2",
    )
    go_repository(
        name = "com_github_circonus_labs_circonus_gometrics",
        importpath = "github.com/circonus-labs/circonus-gometrics",
        sum = "h1:C29Ae4G5GtYyYMm1aztcyj/J5ckgJm2zwdDajFbx1NY=",
        version = "v2.3.1+incompatible",
    )
    go_repository(
        name = "com_github_circonus_labs_circonusllhist",
        importpath = "github.com/circonus-labs/circonusllhist",
        sum = "h1:TJH+oke8D16535+jHExHj4nQvzlZrj7ug5D7I/orNUA=",
        version = "v0.1.3",
    )

    go_repository(
        name = "com_github_client9_misspell",
        importpath = "github.com/client9/misspell",
        sum = "h1:ta993UF76GwbvJcIo3Y68y/M3WxlpEHPWIGDkJYwzJI=",
        version = "v0.3.4",
    )
    go_repository(
        name = "com_github_cncf_udpa_go",
        importpath = "github.com/cncf/udpa/go",
        sum = "h1:hzAQntlaYRkVSFEfj9OTWlVV1H155FMD8BTKktLv0QI=",
        version = "v0.0.0-20210930031921-04548b0d99d4",
    )
    go_repository(
        name = "com_github_cncf_xds_go",
        importpath = "github.com/cncf/xds/go",
        sum = "h1:KwaoQzs/WeUxxJqiJsZ4euOly1Az/IgZXXSxlD/UBNk=",
        version = "v0.0.0-20211130200136-a8f946100490",
    )
    go_repository(
        name = "com_github_cockroachdb_datadriven",
        importpath = "github.com/cockroachdb/datadriven",
        sum = "h1:OaNxuTZr7kxeODyLWsRMC+OD03aFUH+mW6r2d+MWa5Y=",
        version = "v0.0.0-20190809214429-80d97fb3cbaa",
    )
    go_repository(
        name = "com_github_containerd_aufs",
        importpath = "github.com/containerd/aufs",
        sum = "h1:2oeJiwX5HstO7shSrPZjrohJZLzK36wvpdmzDRkL/LY=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_containerd_btrfs",
        importpath = "github.com/containerd/btrfs",
        sum = "h1:osn1exbzdub9L5SouXO5swW4ea/xVdJZ3wokxN5GrnA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_containerd_cgroups",
        importpath = "github.com/containerd/cgroups",
        sum = "h1:iJnMvco9XGvKUvNQkv88bE4uJXxRQH18efbKo9w5vHQ=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_containerd_console",
        importpath = "github.com/containerd/console",
        sum = "h1:Pi6D+aZXM+oUw1czuKgH5IJ+y0jhYcwBJfx5/Ghn9dE=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_containerd_containerd",
        importpath = "github.com/containerd/containerd",
        sum = "h1:NmkCC1/QxyZFBny8JogwLpOy2f+VEbO/f6bV2Mqtwuw=",
        version = "v1.5.8",
    )
    go_repository(
        name = "com_github_containerd_continuity",
        importpath = "github.com/containerd/continuity",
        sum = "h1:UFRRY5JemiAhPZrr/uE0n8fMTLcZsUvySPr1+D7pgr8=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_containerd_fifo",
        importpath = "github.com/containerd/fifo",
        sum = "h1:6PirWBr9/L7GDamKr+XM0IeUFXu5mf3M/BPpH9gaLBU=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_containerd_go_cni",
        importpath = "github.com/containerd/go-cni",
        sum = "h1:YbJAhpTevL2v6u8JC1NhCYRwf+3Vzxcc5vGnYoJ7VeE=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_containerd_go_runc",
        importpath = "github.com/containerd/go-runc",
        sum = "h1:oU+lLv1ULm5taqgV/CJivypVODI4SUz1znWjv3nNYS0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_containerd_imgcrypt",
        importpath = "github.com/containerd/imgcrypt",
        sum = "h1:LBwiTfoUsdiEGAR1TpvxE+Gzt7469oVu87iR3mv3Byc=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_containerd_nri",
        importpath = "github.com/containerd/nri",
        sum = "h1:6QioHRlThlKh2RkRTR4kIT3PKAcrLo3gIWnjkM4dQmQ=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_containerd_stargz_snapshotter_estargz",
        importpath = "github.com/containerd/stargz-snapshotter/estargz",
        sum = "h1:glqzafvxBBAMo+x2w2sdDjUDZeTqqLJmqZPY05qehCU=",
        version = "v0.10.0",
    )
    go_repository(
        name = "com_github_containerd_ttrpc",
        importpath = "github.com/containerd/ttrpc",
        sum = "h1:GbtyLRxb0gOLR0TYQWt3O6B0NvT8tMdorEHqIQo/lWI=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_containerd_typeurl",
        importpath = "github.com/containerd/typeurl",
        sum = "h1:Chlt8zIieDbzQFzXzAeBEF92KhExuE4p9p92/QmY7aY=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_containerd_zfs",
        importpath = "github.com/containerd/zfs",
        sum = "h1:cXLJbx+4Jj7rNsTiqVfm6i+RNLx6FFA2fMmDlEf+Wm8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_containernetworking_cni",
        importpath = "github.com/containernetworking/cni",
        sum = "h1:7zpDnQ3T3s4ucOuJ/ZCLrYBxzkg0AELFfII3Epo9TmI=",
        version = "v0.8.1",
    )
    go_repository(
        name = "com_github_containernetworking_plugins",
        importpath = "github.com/containernetworking/plugins",
        sum = "h1:FD1tADPls2EEi3flPc2OegIY1M9pUa9r2Quag7HMLV8=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_containers_ocicrypt",
        importpath = "github.com/containers/ocicrypt",
        sum = "h1:prL8l9w3ntVqXvNH1CiNn5ENjcCnr38JqpSyvKKB4GI=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_coreos_bbolt",
        importpath = "github.com/coreos/bbolt",
        sum = "h1:wZwiHHUieZCquLkDL0B8UhzreNWsPHooDAG3q34zk0s=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_coreos_etcd",
        importpath = "github.com/coreos/etcd",
        sum = "h1:8F3hqu9fGYLBifCmRCJsicFqDx/D68Rt3q1JMazcgBQ=",
        version = "v3.3.13+incompatible",
    )
    go_repository(
        name = "com_github_coreos_go_etcd",
        importpath = "github.com/coreos/go-etcd",
        sum = "h1:bXhRBIXoTm9BYHS3gE0TtQuyNZyeEMux2sDi4oo5YOo=",
        version = "v2.0.0+incompatible",
    )
    go_repository(
        name = "com_github_coreos_go_iptables",
        importpath = "github.com/coreos/go-iptables",
        sum = "h1:mw6SAibtHKZcNzAsOxjoHIG0gy5YFHhypWSSNc6EjbQ=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_coreos_go_oidc",
        importpath = "github.com/coreos/go-oidc",
        sum = "h1:sdJrfw8akMnCuUlaZU3tE/uYXFgfqom8DBE9so9EBsM=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_coreos_go_semver",
        importpath = "github.com/coreos/go-semver",
        sum = "h1:wkHLiw0WNATZnSG7epLsujiMCgPAc9xhjJ4tgnAxmfM=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_coreos_go_systemd",
        importpath = "github.com/coreos/go-systemd",
        sum = "h1:Wf6HqHfScWJN9/ZjdUKyjop4mf3Qdd+1TvvltAvM3m8=",
        version = "v0.0.0-20190321100706-95778dfbb74e",
    )
    go_repository(
        name = "com_github_coreos_go_systemd_v22",
        importpath = "github.com/coreos/go-systemd/v22",
        sum = "h1:D9/bQk5vlXQFZ6Kwuu6zaiXJ9oTPe68++AzAJc1DzSI=",
        version = "v22.3.2",
    )
    go_repository(
        name = "com_github_coreos_pkg",
        importpath = "github.com/coreos/pkg",
        sum = "h1:lBNOc5arjvs8E5mO2tbpBpLoyyu8B6e44T7hJy6potg=",
        version = "v0.0.0-20180928190104-399ea9e2e55f",
    )
    go_repository(
        name = "com_github_cpuguy83_go_md2man",
        importpath = "github.com/cpuguy83/go-md2man",
        sum = "h1:BSKMNlYxDvnunlTymqtgONjNnaRV1sTpcovwwjF22jk=",
        version = "v1.0.10",
    )
    go_repository(
        name = "com_github_cpuguy83_go_md2man_v2",
        importpath = "github.com/cpuguy83/go-md2man/v2",
        sum = "h1:r/myEWzV9lfsM1tFLgDyu0atFtJ1fXn261LKYj/3DxU=",
        version = "v2.0.1",
    )
    go_repository(
        name = "com_github_creack_pty",
        importpath = "github.com/creack/pty",
        sum = "h1:07n33Z8lZxZ2qwegKbObQohDhXDQxiMMz1NOUGYlesw=",
        version = "v1.1.11",
    )
    go_repository(
        name = "com_github_cyclonedx_cyclonedx_go",
        importpath = "github.com/CycloneDX/cyclonedx-go",
        sum = "h1:Wz4QZ9B4RXGWIWTypVLEOVJgOdFfy5mcS5PGNzUkZxU=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_cyphar_filepath_securejoin",
        importpath = "github.com/cyphar/filepath-securejoin",
        sum = "h1:jCwT2GTP+PY5nBz3c/YL5PAIbusElVrPujOBSCj8xRg=",
        version = "v0.2.2",
    )
    go_repository(
        name = "com_github_d2g_dhcp4",
        importpath = "github.com/d2g/dhcp4",
        sum = "h1:Xo2rK1pzOm0jO6abTPIQwbAmqBIOj132otexc1mmzFc=",
        version = "v0.0.0-20170904100407-a1d1b6c41b1c",
    )
    go_repository(
        name = "com_github_d2g_dhcp4client",
        importpath = "github.com/d2g/dhcp4client",
        sum = "h1:suYBsYZIkSlUMEz4TAYCczKf62IA2UWC+O8+KtdOhCo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_d2g_dhcp4server",
        importpath = "github.com/d2g/dhcp4server",
        sum = "h1:+CpLbZIeUn94m02LdEKPcgErLJ347NUwxPKs5u8ieiY=",
        version = "v0.0.0-20181031114812-7d4a0a7f59a5",
    )
    go_repository(
        name = "com_github_d2g_hardwareaddr",
        importpath = "github.com/d2g/hardwareaddr",
        sum = "h1:itqmmf1PFpC4n5JW+j4BU7X4MTfVurhYRTjODoPb2Y8=",
        version = "v0.0.0-20190221164911-e7d9fbe030e4",
    )
    go_repository(
        name = "com_github_danieljoos_wincred",
        importpath = "github.com/danieljoos/wincred",
        sum = "h1:3RNcEpBg4IhIChZdFRSdlQt1QjCp1sMAPIrOnm7Yf8g=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_datadog_datadog_go",
        importpath = "github.com/DataDog/datadog-go",
        sum = "h1:qSG2N4FghB1He/r2mFrWKCaL7dXCilEuNEeAn20fdD4=",
        version = "v3.2.0+incompatible",
    )

    go_repository(
        name = "com_github_davecgh_go_spew",
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_denisenkom_go_mssqldb",
        importpath = "github.com/denisenkom/go-mssqldb",
        sum = "h1:83Wprp6ROGeiHFAP8WJdI2RoxALQYgdllERc3N5N2DM=",
        version = "v0.0.0-20191124224453-732737034ffd",
    )
    go_repository(
        name = "com_github_denverdino_aliyungo",
        importpath = "github.com/denverdino/aliyungo",
        sum = "h1:p6poVbjHDkKa+wtC8frBMwQtT3BmqGYBjzMwJ63tuR4=",
        version = "v0.0.0-20190125010748-a747050bb1ba",
    )
    go_repository(
        name = "com_github_devigned_tab",
        importpath = "github.com/devigned/tab",
        sum = "h1:3mD6Kb1mUOYeLpJvTVSDwSg5ZsfSxfvxGRTxRsJsITA=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_dgrijalva_jwt_go",
        importpath = "github.com/dgrijalva/jwt-go",
        sum = "h1:7qlOGliEKZXTDg6OTjfoBKDXWrumCAMpl/TFQ4/5kLM=",
        version = "v3.2.0+incompatible",
    )
    go_repository(
        name = "com_github_dgryski_go_sip13",
        importpath = "github.com/dgryski/go-sip13",
        sum = "h1:RMLoZVzv4GliuWafOuPuQDKSm1SJph7uCRnnS61JAn4=",
        version = "v0.0.0-20181026042036-e10d5fee7954",
    )
    go_repository(
        name = "com_github_dimchansky_utfbom",
        importpath = "github.com/dimchansky/utfbom",
        sum = "h1:FcM3g+nofKgUteL8dm/UpdRXNC9KmADgTpLKsu0TRo4=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_djarvur_go_err113",
        importpath = "github.com/Djarvur/go-err113",
        sum = "h1:uCRZZOdMQ0TZPHYTdYpoC0bLYJKPEHPUJ8MeAa51lNU=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_dnaeon_go_vcr",
        importpath = "github.com/dnaeon/go-vcr",
        sum = "h1:r8L/HqC0Hje5AXMu1ooW8oyQyOFv4GxqpL0nRP7SLLY=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_docker_cli",
        importpath = "github.com/docker/cli",
        sum = "h1:kcbwdgWbrBOH8QwQzaJmyriHwF7XIl4HT1qh0HTRys4=",
        version = "v20.10.10+incompatible",
    )
    go_repository(
        name = "com_github_docker_distribution",
        importpath = "github.com/docker/distribution",
        sum = "h1:a5mlkVzth6W5A4fOsS3D2EO5BUmsJpcB+cRlLU7cSug=",
        version = "v2.7.1+incompatible",
    )
    go_repository(
        name = "com_github_docker_docker",
        importpath = "github.com/docker/docker",
        sum = "h1:OqzI/g/W54LczvhnccGqniFoQghHx3pklbLuhfXpqGo=",
        version = "v20.10.11+incompatible",
    )
    go_repository(
        name = "com_github_docker_docker_credential_helpers",
        importpath = "github.com/docker/docker-credential-helpers",
        sum = "h1:axCks+yV+2MR3/kZhAmy07yC56WZ2Pwu/fKWtKuZB0o=",
        version = "v0.6.4",
    )
    go_repository(
        name = "com_github_docker_go_connections",
        importpath = "github.com/docker/go-connections",
        sum = "h1:El9xVISelRB7BuFusrZozjnkIM5YnzCViNKohAFqRJQ=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_docker_go_events",
        importpath = "github.com/docker/go-events",
        sum = "h1:+pKlWGMw7gf6bQ+oDZB4KHQFypsfjYlq/C4rfL7D3g8=",
        version = "v0.0.0-20190806004212-e31b211e4f1c",
    )
    go_repository(
        name = "com_github_docker_go_metrics",
        importpath = "github.com/docker/go-metrics",
        sum = "h1:AgB/0SvBxihN0X8OR4SjsblXkbMvalQ8cjmtKQ2rQV8=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_docker_go_units",
        importpath = "github.com/docker/go-units",
        sum = "h1:3uh0PgVws3nIA0Q+MwDC8yjEPf9zjRfZZWXZYDct3Tw=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_docker_libtrust",
        importpath = "github.com/docker/libtrust",
        sum = "h1:ZClxb8laGDf5arXfYcAtECDFgAgHklGI8CxgjHnXKJ4=",
        version = "v0.0.0-20150114040149-fa567046d9b1",
    )
    go_repository(
        name = "com_github_docker_spdystream",
        importpath = "github.com/docker/spdystream",
        sum = "h1:cenwrSVm+Z7QLSV/BsnenAOcDXdX4cMv4wP0B/5QbPg=",
        version = "v0.0.0-20160310174837-449fdfce4d96",
    )
    go_repository(
        name = "com_github_docopt_docopt_go",
        importpath = "github.com/docopt/docopt-go",
        sum = "h1:bWDMxwH3px2JBh6AyO7hdCn/PkvCZXii8TGj7sbtEbQ=",
        version = "v0.0.0-20180111231733-ee0de3bc6815",
    )
    go_repository(
        name = "com_github_dsnet_compress",
        importpath = "github.com/dsnet/compress",
        sum = "h1:iFaUwBSo5Svw6L7HYpRu/0lE3e0BaElwnNO1qkNQxBY=",
        version = "v0.0.2-0.20210315054119-f66993602bf5",
    )
    go_repository(
        name = "com_github_dsnet_golib",
        importpath = "github.com/dsnet/golib",
        sum = "h1:tFh1tRc4CA31yP6qDcu+Trax5wW5GuMxvkIba07qVLY=",
        version = "v0.0.0-20171103203638-1ea166775780",
    )
    go_repository(
        name = "com_github_dustin_go_humanize",
        importpath = "github.com/dustin/go-humanize",
        sum = "h1:VSnTsYCnlFHaM2/igO1h6X3HA71jcobQuxemgkq4zYo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_elazarl_goproxy",
        importpath = "github.com/elazarl/goproxy",
        sum = "h1:yUdfgN0XgIJw7foRItutHYUIhlcKzcSf5vDpdhQAKTc=",
        version = "v0.0.0-20180725130230-947c36da3153",
    )
    go_repository(
        name = "com_github_emicklei_go_restful",
        importpath = "github.com/emicklei/go-restful",
        sum = "h1:spTtZBk5DYEvbxMVutUuTyh1Ao2r4iyvLdACqsl/Ljk=",
        version = "v2.9.5+incompatible",
    )
    go_repository(
        name = "com_github_envoyproxy_go_control_plane",
        importpath = "github.com/envoyproxy/go-control-plane",
        sum = "h1:cgDRLG7bs59Zd+apAWuzLQL95obVYAymNJek76W3mgw=",
        version = "v0.10.1",
    )
    go_repository(
        name = "com_github_envoyproxy_protoc_gen_validate",
        importpath = "github.com/envoyproxy/protoc-gen-validate",
        sum = "h1:JiO+kJTpmYGjEodY7O1Zk8oZcNz1+f30UtwtXoFUPzE=",
        version = "v0.6.2",
    )
    go_repository(
        name = "com_github_erikstmartin_go_testdb",
        importpath = "github.com/erikstmartin/go-testdb",
        sum = "h1:Yzb9+7DPaBjB8zlTR87/ElzFsnQfuHnVUVqpZZIcV5Y=",
        version = "v0.0.0-20160219214506-8d10e4a1bae5",
    )
    go_repository(
        name = "com_github_evanphx_json_patch",
        importpath = "github.com/evanphx/json-patch",
        sum = "h1:kLcOMZeuLAJvL2BPWLMIj5oaZQobrkAqrL+WFZwQses=",
        version = "v4.9.0+incompatible",
    )
    go_repository(
        name = "com_github_facebookincubator_nvdtools",
        importpath = "github.com/facebookincubator/nvdtools",
        sum = "h1:x1Ucw9+bSkMd8DJJN4jNQ1Lk4PSFlJarGOxp9D6WUMo=",
        version = "v0.1.4",
    )
    go_repository(
        name = "com_github_fatih_color",
        importpath = "github.com/fatih/color",
        sum = "h1:8LOYc1KYPPmyKMuN8QV2DNRWNbLo6LZ0iLs8+mlH53w=",
        version = "v1.13.0",
    )
    go_repository(
        name = "com_github_fatih_set",
        importpath = "github.com/fatih/set",
        sum = "h1:nn2CaJyknWE/6txyUDGwysr3G5QC6xWB/PtVjPBbeaA=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_form3tech_oss_jwt_go",
        importpath = "github.com/form3tech-oss/jwt-go",
        sum = "h1:TcekIExNqud5crz4xD2pavyTgWiPvpYe4Xau31I0PRk=",
        version = "v3.2.2+incompatible",
    )
    go_repository(
        name = "com_github_fortytw2_leaktest",
        importpath = "github.com/fortytw2/leaktest",
        sum = "h1:u8491cBMTQ8ft8aeV+adlcytMZylmA5nnwwkRZjI8vw=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_frankban_quicktest",
        importpath = "github.com/frankban/quicktest",
        sum = "h1:8sXhOn0uLys67V8EsXLc6eszDs8VXWxL3iRvebPhedY=",
        version = "v1.11.3",
    )
    go_repository(
        name = "com_github_fsnotify_fsnotify",
        importpath = "github.com/fsnotify/fsnotify",
        sum = "h1:mZcQUHVQUQWoPXXtuf9yuEXKudkV2sx1E06UadKWpgI=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_fullsailor_pkcs7",
        importpath = "github.com/fullsailor/pkcs7",
        sum = "h1:RDBNVkRviHZtvDvId8XSGPu3rmpmSe+wKRcEWNgsfWU=",
        version = "v0.0.0-20190404230743-d7302db945fa",
    )
    go_repository(
        name = "com_github_gabriel_vasile_mimetype",
        importpath = "github.com/gabriel-vasile/mimetype",
        sum = "h1:Cn9dkdYsMIu56tGho+fqzh7XmvY2YyGU0FnbhiOsEro=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_garyburd_redigo",
        importpath = "github.com/garyburd/redigo",
        sum = "h1:LofdAjjjqCSXMwLGgOgnE+rdPuvX9DxCqaHwKy7i/ko=",
        version = "v0.0.0-20150301180006-535138d7bcd7",
    )
    go_repository(
        name = "com_github_ghodss_yaml",
        importpath = "github.com/ghodss/yaml",
        sum = "h1:wQHKEahhL6wmXdzwWG11gIVCkOv05bNOh+Rxn0yngAk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_critic_go_critic",
        importpath = "github.com/go-critic/go-critic",
        sum = "h1:sGEEdiuvLV0OC7/yC6MnK3K6LCPBplspK45B0XVdFAc=",
        version = "v0.4.3",
    )
    go_repository(
        name = "com_github_go_gl_glfw",
        importpath = "github.com/go-gl/glfw",
        sum = "h1:QbL/5oDUmRBzO9/Z7Seo6zf912W/a6Sr4Eu0G/3Jho0=",
        version = "v0.0.0-20190409004039-e6da0acd62b1",
    )
    go_repository(
        name = "com_github_go_gl_glfw_v3_3_glfw",
        importpath = "github.com/go-gl/glfw/v3.3/glfw",
        sum = "h1:WtGNWLvXpe6ZudgnXrq0barxBImvnnJoMEhXAzcbM0I=",
        version = "v0.0.0-20200222043503-6f7a984d4dc4",
    )
    go_repository(
        name = "com_github_go_ini_ini",
        importpath = "github.com/go-ini/ini",
        sum = "h1:Mujh4R/dH6YL8bxuISne3xX2+qcQ9p0IxKAP6ExWoUo=",
        version = "v1.25.4",
    )
    go_repository(
        name = "com_github_go_kit_kit",
        importpath = "github.com/go-kit/kit",
        sum = "h1:wDJmvq38kDhkVxi50ni9ykkdUr1PKgqKOoi01fa0Mdk=",
        version = "v0.9.0",
    )
    go_repository(
        name = "com_github_go_lintpack_lintpack",
        importpath = "github.com/go-lintpack/lintpack",
        sum = "h1:DI5mA3+eKdWeJ40nU4d6Wc26qmdG8RCi/btYq0TuRN0=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_go_logfmt_logfmt",
        importpath = "github.com/go-logfmt/logfmt",
        sum = "h1:MP4Eh7ZCb31lleYCFuwm0oe4/YGak+5l1vA2NOE80nA=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_go_logr_logr",
        importpath = "github.com/go-logr/logr",
        sum = "h1:QvGt2nLcHH0WK9orKa+ppBPAxREcH364nPUedEpK0TY=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_go_ole_go_ole",
        importpath = "github.com/go-ole/go-ole",
        sum = "h1:2lOsA72HgjxAuMlKpFiCbHTvu44PIVkZ5hqm3RSdI/E=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_go_openapi_jsonpointer",
        importpath = "github.com/go-openapi/jsonpointer",
        sum = "h1:gihV7YNZK1iK6Tgwwsxo2rJbD1GTbdm72325Bq8FI3w=",
        version = "v0.19.3",
    )
    go_repository(
        name = "com_github_go_openapi_jsonreference",
        importpath = "github.com/go-openapi/jsonreference",
        sum = "h1:5cxNfTy0UVC3X8JL5ymxzyoUZmo8iZb+jeTWn7tUa8o=",
        version = "v0.19.3",
    )
    go_repository(
        name = "com_github_go_openapi_spec",
        importpath = "github.com/go-openapi/spec",
        sum = "h1:0XRyw8kguri6Yw4SxhsQA/atC88yqrk0+G4YhI2wabc=",
        version = "v0.19.3",
    )
    go_repository(
        name = "com_github_go_openapi_swag",
        importpath = "github.com/go-openapi/swag",
        sum = "h1:lTz6Ys4CmqqCQmZPBlbQENR1/GucA2bzYTE12Pw4tFY=",
        version = "v0.19.5",
    )
    go_repository(
        name = "com_github_go_restruct_restruct",
        importpath = "github.com/go-restruct/restruct",
        sum = "h1:2Lp474S/9660+SJjpVxoKuWX09JsXHSrdV7Nv3/gkvc=",
        version = "v1.2.0-alpha",
    )
    go_repository(
        name = "com_github_go_sql_driver_mysql",
        importpath = "github.com/go-sql-driver/mysql",
        sum = "h1:ozyZYNQW3x3HtqT1jira07DN2PArx2v7/mN66gGcHOs=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_go_stack_stack",
        importpath = "github.com/go-stack/stack",
        sum = "h1:5SgMzNM5HxrEjV0ww2lTmX6E2Izsfxas4+YHWRs3Lsk=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_go_test_deep",
        importpath = "github.com/go-test/deep",
        sum = "h1:/VSMRlnY/JSyqxQUzQLKVMAskpY/NZKFA5j2P+0pP2M=",
        version = "v1.0.7",
    )
    go_repository(
        name = "com_github_go_toolsmith_astcast",
        importpath = "github.com/go-toolsmith/astcast",
        sum = "h1:JojxlmI6STnFVG9yOImLeGREv8W2ocNUM+iOhR6jE7g=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astcopy",
        importpath = "github.com/go-toolsmith/astcopy",
        sum = "h1:OMgl1b1MEpjFQ1m5ztEO06rz5CUd3oBv9RF7+DyvdG8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astequal",
        importpath = "github.com/go-toolsmith/astequal",
        sum = "h1:4zxD8j3JRFNyLN46lodQuqz3xdKSrur7U/sr0SDS/gQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astfmt",
        importpath = "github.com/go-toolsmith/astfmt",
        sum = "h1:A0vDDXt+vsvLEdbMFJAUBI/uTbRw1ffOPnxsILnFL6k=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astinfo",
        importpath = "github.com/go-toolsmith/astinfo",
        sum = "h1:wP6mXeB2V/d1P1K7bZ5vDUO3YqEzcvOREOxZPEu3gVI=",
        version = "v0.0.0-20180906194353-9809ff7efb21",
    )
    go_repository(
        name = "com_github_go_toolsmith_astp",
        importpath = "github.com/go-toolsmith/astp",
        sum = "h1:alXE75TXgcmupDsMK1fRAy0YUzLzqPVvBKoyWV+KPXg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_pkgload",
        importpath = "github.com/go-toolsmith/pkgload",
        sum = "h1:4DFWWMXVfbcN5So1sBNW9+yeiMqLFGl1wFLTL5R0Tgg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_strparse",
        importpath = "github.com/go-toolsmith/strparse",
        sum = "h1:Vcw78DnpCAKlM20kSbAyO4mPfJn/lyYA4BJUDxe2Jb4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_typep",
        importpath = "github.com/go-toolsmith/typep",
        sum = "h1:8xdsa1+FSIH/RhEkgnD1j2CJOy5mNllW1Q9tRiYwvlk=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_go_xmlfmt_xmlfmt",
        importpath = "github.com/go-xmlfmt/xmlfmt",
        sum = "h1:khEcpUM4yFcxg4/FHQWkvVRmgijNXRfzkIDHh23ggEo=",
        version = "v0.0.0-20191208150333-d5b6f63a941b",
    )
    go_repository(
        name = "com_github_gobwas_glob",
        importpath = "github.com/gobwas/glob",
        sum = "h1:A4xDbljILXROh+kObIiy5kIaPYD8e96x1tgBhUI5J+Y=",
        version = "v0.2.3",
    )
    go_repository(
        name = "com_github_godbus_dbus",
        importpath = "github.com/godbus/dbus",
        sum = "h1:BWhy2j3IXJhjCbC68FptL43tDKIq8FladmaTs3Xs7Z8=",
        version = "v0.0.0-20190422162347-ade71ed3457e",
    )
    go_repository(
        name = "com_github_godbus_dbus_v5",
        importpath = "github.com/godbus/dbus/v5",
        sum = "h1:9349emZab16e7zQvpmsbtjc18ykshndd8y2PG3sgJbA=",
        version = "v5.0.4",
    )
    go_repository(
        name = "com_github_gofrs_flock",
        importpath = "github.com/gofrs/flock",
        sum = "h1:ekuhfTjngPhisSjOJ0QWKpPQE8/rbknHaes6WVJj5Hw=",
        version = "v0.0.0-20190320160742-5135e617513b",
    )
    go_repository(
        name = "com_github_gogo_googleapis",
        importpath = "github.com/gogo/googleapis",
        sum = "h1:zgVt4UpGxcqVOw97aRGxT4svlcmdK35fynLNctY32zI=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_gogo_protobuf",
        importpath = "github.com/gogo/protobuf",
        sum = "h1:Ov1cvc58UF3b5XjBnZv7+opcTcQFZebYjWzi34vdm4Q=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_golang_glog",
        importpath = "github.com/golang/glog",
        sum = "h1:VKtxabqXZkF25pY9ekfRL6a582T4P37/31XEstQ5p58=",
        version = "v0.0.0-20160126235308-23def4e6c14b",
    )
    go_repository(
        name = "com_github_golang_groupcache",
        importpath = "github.com/golang/groupcache",
        sum = "h1:oI5xCqsCo564l8iNU+DwB5epxmsaqB+rhGL0m5jtYqE=",
        version = "v0.0.0-20210331224755-41bb18bfe9da",
    )
    go_repository(
        name = "com_github_golang_mock",
        importpath = "github.com/golang/mock",
        sum = "h1:ErTB+efbowRARo13NNdxyJji2egdxLGQhRaY+DUumQc=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        importpath = "github.com/golang/protobuf",
        sum = "h1:ROPKBNFfQgOUMifHyP+KYbvpjbdoFNs+aK7DXlji0Tw=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_golang_snappy",
        importpath = "github.com/golang/snappy",
        sum = "h1:yAGX7huGHXlcLOEtBnF4w7FQwA26wojNCwOYAEhLjQM=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_golang_sql_civil",
        importpath = "github.com/golang-sql/civil",
        sum = "h1:lXe2qZdvpiX5WZkZR4hgp4KJVfY3nMkvmwbVkpv1rVY=",
        version = "v0.0.0-20190719163853-cb61b32ac6fe",
    )
    go_repository(
        name = "com_github_golangci_check",
        importpath = "github.com/golangci/check",
        sum = "h1:23T5iq8rbUYlhpt5DB4XJkc6BU31uODLD1o1gKvZmD0=",
        version = "v0.0.0-20180506172741-cfe4005ccda2",
    )
    go_repository(
        name = "com_github_golangci_dupl",
        importpath = "github.com/golangci/dupl",
        sum = "h1:w8hkcTqaFpzKqonE9uMCefW1WDie15eSP/4MssdenaM=",
        version = "v0.0.0-20180902072040-3e9179ac440a",
    )
    go_repository(
        name = "com_github_golangci_errcheck",
        importpath = "github.com/golangci/errcheck",
        sum = "h1:YYWNAGTKWhKpcLLt7aSj/odlKrSrelQwlovBpDuf19w=",
        version = "v0.0.0-20181223084120-ef45e06d44b6",
    )
    go_repository(
        name = "com_github_golangci_go_misc",
        importpath = "github.com/golangci/go-misc",
        sum = "h1:9kfjN3AdxcbsZBf8NjltjWihK2QfBBBZuv91cMFfDHw=",
        version = "v0.0.0-20180628070357-927a3d87b613",
    )
    go_repository(
        name = "com_github_golangci_goconst",
        importpath = "github.com/golangci/goconst",
        sum = "h1:pe9JHs3cHHDQgOFXJJdYkK6fLz2PWyYtP4hthoCMvs8=",
        version = "v0.0.0-20180610141641-041c5f2b40f3",
    )
    go_repository(
        name = "com_github_golangci_gocyclo",
        importpath = "github.com/golangci/gocyclo",
        sum = "h1:pXTK/gkVNs7Zyy7WKgLXmpQ5bHTrq5GDsp8R9Qs67g0=",
        version = "v0.0.0-20180528144436-0a533e8fa43d",
    )
    go_repository(
        name = "com_github_golangci_gofmt",
        importpath = "github.com/golangci/gofmt",
        sum = "h1:iR3fYXUjHCR97qWS8ch1y9zPNsgXThGwjKPrYfqMPks=",
        version = "v0.0.0-20190930125516-244bba706f1a",
    )
    go_repository(
        name = "com_github_golangci_golangci_lint",
        importpath = "github.com/golangci/golangci-lint",
        sum = "h1:VYLx63qb+XJsHdZ27PMS2w5JZacN0XG8ffUwe7yQomo=",
        version = "v1.27.0",
    )
    go_repository(
        name = "com_github_golangci_ineffassign",
        importpath = "github.com/golangci/ineffassign",
        sum = "h1:gLLhTLMk2/SutryVJ6D4VZCU3CUqr8YloG7FPIBWFpI=",
        version = "v0.0.0-20190609212857-42439a7714cc",
    )
    go_repository(
        name = "com_github_golangci_lint_1",
        importpath = "github.com/golangci/lint-1",
        sum = "h1:MfyDlzVjl1hoaPzPD4Gpb/QgoRfSBR0jdhwGyAWwMSA=",
        version = "v0.0.0-20191013205115-297bf364a8e0",
    )
    go_repository(
        name = "com_github_golangci_maligned",
        importpath = "github.com/golangci/maligned",
        sum = "h1:kNY3/svz5T29MYHubXix4aDDuE3RWHkPvopM/EDv/MA=",
        version = "v0.0.0-20180506175553-b1d89398deca",
    )
    go_repository(
        name = "com_github_golangci_misspell",
        importpath = "github.com/golangci/misspell",
        sum = "h1:pLzmVdl3VxTOncgzHcvLOKirdvcx/TydsClUQXTehjo=",
        version = "v0.3.5",
    )
    go_repository(
        name = "com_github_golangci_prealloc",
        importpath = "github.com/golangci/prealloc",
        sum = "h1:leSNB7iYzLYSSx3J/s5sVf4Drkc68W2wm4Ixh/mr0us=",
        version = "v0.0.0-20180630174525-215b22d4de21",
    )
    go_repository(
        name = "com_github_golangci_revgrep",
        importpath = "github.com/golangci/revgrep",
        sum = "h1:XQKc8IYQOeRwVs36tDrEmTgDgP88d5iEURwpmtiAlOM=",
        version = "v0.0.0-20180812185044-276a5c0a1039",
    )
    go_repository(
        name = "com_github_golangci_unconvert",
        importpath = "github.com/golangci/unconvert",
        sum = "h1:zwtduBRr5SSWhqsYNgcuWO2kFlpdOZbP0+yRjmvPGys=",
        version = "v0.0.0-20180507085042-28b1c447d1f4",
    )
    go_repository(
        name = "com_github_google_btree",
        importpath = "github.com/google/btree",
        sum = "h1:0udJVsspx3VBr5FwtLhQQtuAsVc79tTq0ocGIPAU6qo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:BKbKCqvP6I+rmFHt06ZmyQtvB8xAkWdhFyr0ZUNZcxQ=",
        version = "v0.5.6",
    )
    go_repository(
        name = "com_github_google_go_containerregistry",
        importpath = "github.com/google/go-containerregistry",
        sum = "h1:u0onUUOcyoCDHEiJoyR1R1gx5er1+r06V5DBhUU5ndk=",
        version = "v0.7.0",
    )
    go_repository(
        name = "com_github_google_go_github_v28",
        importpath = "github.com/google/go-github/v28",
        sum = "h1:kORf5ekX5qwXO2mGzXXOjMe/g6ap8ahVe0sBEulhSxo=",
        version = "v28.1.1",
    )
    go_repository(
        name = "com_github_google_go_querystring",
        importpath = "github.com/google/go-querystring",
        sum = "h1:Xkwi/a1rcvNg1PPYe5vI8GbeBY/jrVuDX5ASuANWTrk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_go_replayers_grpcreplay",
        importpath = "github.com/google/go-replayers/grpcreplay",
        sum = "h1:eNb1y9rZFmY4ax45uEEECSa8fsxGRU+8Bil52ASAwic=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_go_replayers_httpreplay",
        importpath = "github.com/google/go-replayers/httpreplay",
        sum = "h1:AX7FUb4BjrrzNvblr/OlgwrmFiep6soj5K2QSDW7BGk=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_gofuzz",
        importpath = "github.com/google/gofuzz",
        sum = "h1:Hsa8mG0dQ46ij8Sl2AYJDUv1oA9/d6Vk+3LG99Oe02g=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_google_martian",
        importpath = "github.com/google/martian",
        sum = "h1:xmapqc1AyLoB+ddYT6r04bD9lIjlOqGaREovi0SzFaE=",
        version = "v2.1.1-0.20190517191504-25dcb96d9e51+incompatible",
    )
    go_repository(
        name = "com_github_google_martian_v3",
        importpath = "github.com/google/martian/v3",
        sum = "h1:d8MncMlErDFTwQGBK1xhv026j9kqhvw1Qv9IbWT1VLQ=",
        version = "v3.2.1",
    )
    go_repository(
        name = "com_github_google_pprof",
        importpath = "github.com/google/pprof",
        sum = "h1:K6RDEckDVWvDI9JAJYCmNdQXq6neHJOYx3V6jnqNEec=",
        version = "v0.0.0-20210720184732-4bb14d4b1be1",
    )
    go_repository(
        name = "com_github_google_renameio",
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_rpmpack",
        importpath = "github.com/google/rpmpack",
        sum = "h1:BW6OvS3kpT5UEPbCZ+KyX/OB4Ks9/MNMhWjqPPkZxsE=",
        version = "v0.0.0-20191226140753-aa36bfddb3a0",
    )
    go_repository(
        name = "com_github_google_subcommands",
        importpath = "github.com/google/subcommands",
        sum = "h1:/eqq+otEXm5vhfBrbREPCSVQbvofip6kIz+mX5TUH7k=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_google_uuid",
        importpath = "github.com/google/uuid",
        sum = "h1:t6JiXgmwXMjEs8VusXIJk2BXHsn+wx8BZdTaoZ5fu7I=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_google_wire",
        importpath = "github.com/google/wire",
        sum = "h1:kXcsA/rIGzJImVqPdhfnr6q0xsS9gU0515q1EPpJ9fE=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_googleapis_gax_go",
        importpath = "github.com/googleapis/gax-go",
        sum = "h1:silFMLAnr330+NRuag/VjIGF7TLp/LBrV2CJKFLWEww=",
        version = "v2.0.2+incompatible",
    )
    go_repository(
        name = "com_github_googleapis_gax_go_v2",
        importpath = "github.com/googleapis/gax-go/v2",
        sum = "h1:dp3bWCh+PPO1zjRRiCSczJav13sBvG4UhNyVTa1KqdU=",
        version = "v2.1.1",
    )
    go_repository(
        name = "com_github_googleapis_gnostic",
        importpath = "github.com/googleapis/gnostic",
        sum = "h1:DLJCy1n/vrD4HPjOvYcT8aYQXpPIzoRZONaYwyycI+I=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_googlecloudplatform_cloudsql_proxy",
        importpath = "github.com/GoogleCloudPlatform/cloudsql-proxy",
        sum = "h1:sTOp2Ajiew5XIH92YSdwhYc+bgpUX5j5TKK/Ac8Saw8=",
        version = "v0.0.0-20191009163259-e802c2cb94ae",
    )
    go_repository(
        name = "com_github_googlecloudplatform_k8s_cloud_provider",
        importpath = "github.com/GoogleCloudPlatform/k8s-cloud-provider",
        sum = "h1:N7lSsF+R7wSulUADi36SInSQA3RvfO/XclHQfedr0qk=",
        version = "v0.0.0-20190822182118-27a4ced34534",
    )
    go_repository(
        name = "com_github_gookit_color",
        importpath = "github.com/gookit/color",
        sum = "h1:tXy44JFSFkKnELV6WaMo/lLfu/meqITX3iAV52do7lk=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gophercloud_gophercloud",
        importpath = "github.com/gophercloud/gophercloud",
        sum = "h1:P/nh25+rzXouhytV2pUHBb65fnds26Ghl8/391+sT5o=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_gopherjs_gopherjs",
        importpath = "github.com/gopherjs/gopherjs",
        sum = "h1:twflg0XRTjwKpxb/jFExr4HGq6on2dEOmnL6FV+fgPw=",
        version = "v0.0.0-20190910122728-9d188e94fb99",
    )
    go_repository(
        name = "com_github_goreleaser_goreleaser",
        importpath = "github.com/goreleaser/goreleaser",
        sum = "h1:Z+7XPrfGK11s/Sp+a06sx2FzGuCjTBdxN2ubpGvQbjY=",
        version = "v0.136.0",
    )
    go_repository(
        name = "com_github_goreleaser_nfpm",
        importpath = "github.com/goreleaser/nfpm",
        sum = "h1:BPwIomC+e+yuDX9poJowzV7JFVcYA0+LwGSkbAPs2Hw=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_gorilla_handlers",
        importpath = "github.com/gorilla/handlers",
        sum = "h1:893HsJqtxp9z1SF76gg6hY70hRY1wVlTSnC/h1yUDCo=",
        version = "v0.0.0-20150720190736-60c7bfde3e33",
    )
    go_repository(
        name = "com_github_gorilla_mux",
        importpath = "github.com/gorilla/mux",
        sum = "h1:i40aqfkR1h2SlN9hojwV5ZA91wcXFOvkdNIeFDP5koI=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_gorilla_websocket",
        importpath = "github.com/gorilla/websocket",
        sum = "h1:+/TMaTYc4QFitKJxsQ7Yye35DkWvkdLcvGKqM+x0Ufc=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gostaticanalysis_analysisutil",
        importpath = "github.com/gostaticanalysis/analysisutil",
        sum = "h1:iwp+5/UAyzQSFgQ4uR2sni99sJ8Eo9DEacKWM5pekIg=",
        version = "v0.0.3",
    )
    go_repository(
        name = "com_github_gregjones_httpcache",
        importpath = "github.com/gregjones/httpcache",
        sum = "h1:pdN6V1QBWetyv/0+wjACpqVH+eVULgEjkurDLq3goeM=",
        version = "v0.0.0-20180305231024-9cad4c3443a7",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_middleware",
        importpath = "github.com/grpc-ecosystem/go-grpc-middleware",
        sum = "h1:z53tR0945TRRQO/fLEVPI6SMv7ZflF0TEaTAoU7tOzg=",
        version = "v1.0.1-0.20190118093823-f849b5445de4",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_prometheus",
        importpath = "github.com/grpc-ecosystem/go-grpc-prometheus",
        sum = "h1:Ovs26xHkKqVztRpIrF/92BcuyuQ/YW4NSIpoGtfXNho=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_grpc_gateway",
        importpath = "github.com/grpc-ecosystem/grpc-gateway",
        sum = "h1:gmcG1KaJ57LophUzW0Hy8NmPhnMZb4M0+kPpLofRdBo=",
        version = "v1.16.0",
    )
    go_repository(
        name = "com_github_hashicorp_consul_api",
        importpath = "github.com/hashicorp/consul/api",
        sum = "h1:Hw/G8TtRvOElqxVIhBzXciiSTbapq8hZ2XKZsXk5ZCE=",
        version = "v1.11.0",
    )
    go_repository(
        name = "com_github_hashicorp_consul_sdk",
        importpath = "github.com/hashicorp/consul/sdk",
        sum = "h1:OJtKBtEjboEZvG6AOUdh4Z1Zbyu0WcxQ0qatRrZHTVU=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_hashicorp_errwrap",
        importpath = "github.com/hashicorp/errwrap",
        sum = "h1:hLrqtEDnRye3+sgx6z4qVLNuviH3MR5aQ0ykNJa/UYA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_cleanhttp",
        importpath = "github.com/hashicorp/go-cleanhttp",
        sum = "h1:035FKYIWjmULyFRBKPs8TBQoi0x6d9G4xc9neXJWAZQ=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_getter",
        importpath = "github.com/hashicorp/go-getter",
        sum = "h1:b7ahZW50iQiUek/at3CvZhPK1/jiV6CtKcsJiR6E4R0=",
        version = "v1.5.9",
    )
    go_repository(
        name = "com_github_hashicorp_go_hclog",
        importpath = "github.com/hashicorp/go-hclog",
        sum = "h1:bkKf0BeBXcSYa7f5Fyi9gMuQ8gNsxeiNpZjR6VxNZeo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_immutable_radix",
        importpath = "github.com/hashicorp/go-immutable-radix",
        sum = "h1:DKHmCUm2hRBK510BaiZlwvpD40f8bJFeZnpfm2KLowc=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_msgpack",
        importpath = "github.com/hashicorp/go-msgpack",
        sum = "h1:zKjpN5BK/P5lMYrLmBHdBULWbJ0XpYR+7NGzqkZzoD4=",
        version = "v0.5.3",
    )
    go_repository(
        name = "com_github_hashicorp_go_multierror",
        importpath = "github.com/hashicorp/go-multierror",
        sum = "h1:B9UzwGQJehnUY1yNrnwREHc3fGbC2xefo8g4TbElacI=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_net",
        importpath = "github.com/hashicorp/go.net",
        sum = "h1:sNCoNyDEvN1xa+X0baata4RdcpKwcMS6DH+xwfqPgjw=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_retryablehttp",
        importpath = "github.com/hashicorp/go-retryablehttp",
        sum = "h1:HJunrbHTDDbBb/ay4kxa1n+dLmttUlnP3V9oNE4hmsM=",
        version = "v0.6.6",
    )
    go_repository(
        name = "com_github_hashicorp_go_rootcerts",
        importpath = "github.com/hashicorp/go-rootcerts",
        sum = "h1:jzhAVGtqPKbwpyCPELlgNWhE1znq+qwJtW5Oi2viEzc=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_safetemp",
        importpath = "github.com/hashicorp/go-safetemp",
        sum = "h1:2HR189eFNrjHQyENnQMMpCiBAsRxzbTMIgBhEyExpmo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_sockaddr",
        importpath = "github.com/hashicorp/go-sockaddr",
        sum = "h1:GeH6tui99pF4NJgfnhp+L6+FfobzVW3Ah46sLo0ICXs=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_syslog",
        importpath = "github.com/hashicorp/go-syslog",
        sum = "h1:KaodqZuhUoZereWVIYmpUgZysurB1kBLX2j0MwMrUAE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_uuid",
        importpath = "github.com/hashicorp/go-uuid",
        sum = "h1:fv1ep09latC32wFoVwnqcnKJGnMSdBanPczbHAYm1BE=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_version",
        importpath = "github.com/hashicorp/go-version",
        sum = "h1:3vNe/fWF5CBgRIguda1meWhsZHy3m8gCJ5wx+dIzX/E=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_hashicorp_golang_lru",
        importpath = "github.com/hashicorp/golang-lru",
        sum = "h1:YDjusn29QI/Das2iO9M0BHnIbxPeyuCHsjMW+lJfyTc=",
        version = "v0.5.4",
    )
    go_repository(
        name = "com_github_hashicorp_hcl",
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:0Anlzjpi4vEasTeNFn2mLJgTSwt0+6sfsiTG8qcWGx4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_logutils",
        importpath = "github.com/hashicorp/logutils",
        sum = "h1:dLEQVugN8vlakKOUE3ihGLTZJRB4j+M2cdTm/ORI65Y=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_mdns",
        importpath = "github.com/hashicorp/mdns",
        sum = "h1:sY0CMhFmjIPDMlTB+HfymFHCaYLhgifZ0QhjaYKD/UQ=",
        version = "v1.0.4",
    )
    go_repository(
        name = "com_github_hashicorp_memberlist",
        importpath = "github.com/hashicorp/memberlist",
        sum = "h1:8+567mCcFDnS5ADl7lrpxPMWiFCElyUEeW0gtj34fMA=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_hashicorp_serf",
        importpath = "github.com/hashicorp/serf",
        sum = "h1:uuEX1kLR6aoda1TBttmJQKDLZE1Ob7KN0NPdE7EtCDc=",
        version = "v0.9.6",
    )
    go_repository(
        name = "com_github_hpcloud_tail",
        importpath = "github.com/hpcloud/tail",
        sum = "h1:nfCOvKYfkgYP8hkirhJocXT2+zOD8yUNjXaWfTlyFKI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_iancoleman_orderedmap",
        importpath = "github.com/iancoleman/orderedmap",
        sum = "h1:i462o439ZjprVSFSZLZxcsoAe592sZB1rci2Z8j4wdk=",
        version = "v0.0.0-20190318233801-ac98e3ecb4b0",
    )
    go_repository(
        name = "com_github_iancoleman_strcase",
        importpath = "github.com/iancoleman/strcase",
        sum = "h1:05I4QRnGpI0m37iZQRuskXh+w77mr6Z41lwQzuHLwW0=",
        version = "v0.2.0",
    )

    go_repository(
        name = "com_github_ianlancetaylor_demangle",
        importpath = "github.com/ianlancetaylor/demangle",
        sum = "h1:mV02weKRL81bEnm8A0HT1/CAelMQDBuQIfLw8n+d6xI=",
        version = "v0.0.0-20200824232613-28f6c0f3b639",
    )
    go_repository(
        name = "com_github_imdario_mergo",
        importpath = "github.com/imdario/mergo",
        sum = "h1:b6R2BslTbIEToALKP7LxUvijTsNI9TAe80pLWN2g/HU=",
        version = "v0.3.12",
    )
    go_repository(
        name = "com_github_inconshreveable_mousetrap",
        importpath = "github.com/inconshreveable/mousetrap",
        sum = "h1:Z8tu5sraLXCXIcARxBp/8cbvlwVa7Z1NHg9XEKhtSvM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_j_keck_arping",
        importpath = "github.com/j-keck/arping",
        sum = "h1:742eGXur0715JMq73aD95/FU0XpVKXqNuTnEfXsLOYQ=",
        version = "v0.0.0-20160618110441-2cf9dc699c56",
    )
    go_repository(
        name = "com_github_jarcoal_httpmock",
        importpath = "github.com/jarcoal/httpmock",
        sum = "h1:cHtVEcTxRSX4J0je7mWPfc9BpDpqzXSJ5HbymZmyHck=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_jingyugao_rowserrcheck",
        importpath = "github.com/jingyugao/rowserrcheck",
        sum = "h1:GmsqmapfzSJkm28dhRoHz2tLRbJmqhU86IPgBtN3mmk=",
        version = "v0.0.0-20191204022205-72ab7603b68a",
    )
    go_repository(
        name = "com_github_jinzhu_copier",
        importpath = "github.com/jinzhu/copier",
        sum = "h1:QdBOCbaouLDYaIPFfi1bKv5F5tPpeTwXe4sD0jqtz5w=",
        version = "v0.3.2",
    )
    go_repository(
        name = "com_github_jinzhu_gorm",
        importpath = "github.com/jinzhu/gorm",
        sum = "h1:Kg3ShyTPcM6nzVo148fRrcMO6MNKuqtOUwnzqMgVniM=",
        version = "v1.9.14",
    )
    go_repository(
        name = "com_github_jinzhu_inflection",
        importpath = "github.com/jinzhu/inflection",
        sum = "h1:K317FqzuhWc8YvSVlFMCCUb36O/S9MCKRDI7QkRKD/E=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_jinzhu_now",
        importpath = "github.com/jinzhu/now",
        sum = "h1:HjfetcXq097iXP0uoPCdnM4Efp5/9MsM0/M+XOTeR3M=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_jirfag_go_printf_func_name",
        importpath = "github.com/jirfag/go-printf-func-name",
        sum = "h1:KA9BjwUk7KlCh6S9EAGWBt1oExIUv9WyNCiRz5amv48=",
        version = "v0.0.0-20200119135958-7558a9eaa5af",
    )
    go_repository(
        name = "com_github_jmespath_go_jmespath",
        importpath = "github.com/jmespath/go-jmespath",
        sum = "h1:BEgLn5cpjn8UN1mAw4NjwDrS35OdebyEtFe+9YPoQUg=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_jmespath_go_jmespath_internal_testify",
        importpath = "github.com/jmespath/go-jmespath/internal/testify",
        sum = "h1:shLQSRRSCCPj3f2gpwzGwWFoC7ycTf1rcQZHOlsJ6N8=",
        version = "v1.5.1",
    )

    go_repository(
        name = "com_github_jmoiron_sqlx",
        importpath = "github.com/jmoiron/sqlx",
        sum = "h1:lrdPtrORjGv1HbbEvKWDUAy97mPpFm4B8hp77tcCUJY=",
        version = "v1.2.1-0.20190826204134-d7d95172beb5",
    )
    go_repository(
        name = "com_github_joefitzgerald_rainbow_reporter",
        importpath = "github.com/joefitzgerald/rainbow-reporter",
        sum = "h1:AuMG652zjdzI0YCCnXAqATtRBpGXMcAnrajcaTrSeuo=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_joho_godotenv",
        importpath = "github.com/joho/godotenv",
        sum = "h1:Zjp+RcGpHhGlrMbJzXTrZZPrWj+1vfm90La1wgB6Bhc=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_jonboulle_clockwork",
        importpath = "github.com/jonboulle/clockwork",
        sum = "h1:VKV+ZcuP6l3yW9doeqz6ziZGgcynBVQO+obU0+0hcPo=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_jpillora_backoff",
        importpath = "github.com/jpillora/backoff",
        sum = "h1:K//n/AqR5HjG3qxbrBCL4vJPW0MVFSs9CPK1OOJdRME=",
        version = "v0.0.0-20180909062703-3050d21c67d7",
    )
    go_repository(
        name = "com_github_json_iterator_go",
        importpath = "github.com/json-iterator/go",
        sum = "h1:PV8peI4a0ysnczrg+LtxykD8LfKY9ML6u2jnxaEnrnM=",
        version = "v1.1.12",
    )
    go_repository(
        name = "com_github_jstemmer_go_junit_report",
        importpath = "github.com/jstemmer/go-junit-report",
        sum = "h1:6QPYqodiu3GuPL+7mfx+NwDdp2eTkp9IfEUpgAwUN0o=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_jtolds_gls",
        importpath = "github.com/jtolds/gls",
        sum = "h1:xdiiI2gbIgH/gLH7ADydsJ1uDOEzR8yvV7C0MuV77Wo=",
        version = "v4.20.0+incompatible",
    )
    go_repository(
        name = "com_github_julienschmidt_httprouter",
        importpath = "github.com/julienschmidt/httprouter",
        sum = "h1:TDTW5Yz1mjftljbcKqRcrYhd4XeOoI98t+9HbQbYf7g=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_k0kubun_go_ansi",
        importpath = "github.com/k0kubun/go-ansi",
        sum = "h1:qGQQKEcAR99REcMpsXCp3lJ03zYT1PkRd3kQGPn9GVg=",
        version = "v0.0.0-20180517002512-3bf9e2903213",
    )
    go_repository(
        name = "com_github_kisielk_errcheck",
        importpath = "github.com/kisielk/errcheck",
        sum = "h1:e8esj/e4R+SAOwFwN+n3zr0nYeCyeweozKfO23MvHzY=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_kisielk_gotool",
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_klauspost_compress",
        importpath = "github.com/klauspost/compress",
        sum = "h1:P76CopJELS0TiO2mebmnzgWaajssP/EszplttgQxcgc=",
        version = "v1.13.6",
    )
    go_repository(
        name = "com_github_klauspost_cpuid",
        importpath = "github.com/klauspost/cpuid",
        sum = "h1:NMpwD2G9JSFOE1/TJjGSo5zG7Yb2bTe7eq1jH+irmeE=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_klauspost_pgzip",
        importpath = "github.com/klauspost/pgzip",
        sum = "h1:qnWYvvKqedOF2ulHpMG72XQol4ILEJ8k2wwRl/Km8oE=",
        version = "v1.2.5",
    )
    go_repository(
        name = "com_github_knqyf263_go_apk_version",
        importpath = "github.com/knqyf263/go-apk-version",
        sum = "h1:GvCU5GXhHq+7LeOzx/haG7HSIZokl3/0GkoUFzsRJjg=",
        version = "v0.0.0-20200609155635-041fdbb8563f",
    )
    go_repository(
        name = "com_github_knqyf263_go_deb_version",
        importpath = "github.com/knqyf263/go-deb-version",
        sum = "h1:X4cedH4Kn3JPupAwwWuo4AzYp16P0OyLO9d7OnMZc/c=",
        version = "v0.0.0-20190517075300-09fca494f03d",
    )
    go_repository(
        name = "com_github_konsorten_go_windows_terminal_sequences",
        importpath = "github.com/konsorten/go-windows-terminal-sequences",
        sum = "h1:CE8S1cTafDpPvMhIxNJKvHsGVBgn1xWYf1NbHQhywc8=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_kr_fs",
        importpath = "github.com/kr/fs",
        sum = "h1:Jskdu9ieNAYnjxsi0LbQp1ulIKZV1LAFgK1tWhpZgl8=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kr_logfmt",
        importpath = "github.com/kr/logfmt",
        sum = "h1:T+h1c/A9Gawja4Y9mFVWj2vyii2bbUNDw3kt9VxK2EY=",
        version = "v0.0.0-20140226030751-b84e30acd515",
    )
    go_repository(
        name = "com_github_kr_pretty",
        importpath = "github.com/kr/pretty",
        sum = "h1:Fmg33tUaq4/8ym9TJN1x7sLJnHVwhP33CNkpYV/7rwI=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_kr_pty",
        importpath = "github.com/kr/pty",
        sum = "h1:AkaSdXYQOWeaO3neb8EM634ahkXXe3jYbVh/F9lq+GI=",
        version = "v1.1.8",
    )
    go_repository(
        name = "com_github_kr_text",
        importpath = "github.com/kr/text",
        sum = "h1:5Nx0Ya0ZqY2ygV366QzturHI13Jq95ApcVaJBhpS+AY=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_lib_pq",
        importpath = "github.com/lib/pq",
        sum = "h1:LXpIM/LZ5xGFhOpXAQUIMM1HdyqzVYM13zNdjCEEcA0=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_logrusorgru_aurora",
        importpath = "github.com/logrusorgru/aurora",
        sum = "h1:bqDmpDG49ZRnB5PcgP0RXtQvnMSgIF14M7CBd2shtXs=",
        version = "v0.0.0-20200102142835-e9ef32dff381",
    )
    go_repository(
        name = "com_github_lyft_protoc_gen_star",
        importpath = "github.com/lyft/protoc-gen-star",
        sum = "h1:zSGLzsUew8RT+ZKPHc3jnf8XLaVyHzTcAFBzHtCNR20=",
        version = "v0.5.3",
    )

    go_repository(
        name = "com_github_magiconair_properties",
        importpath = "github.com/magiconair/properties",
        sum = "h1:b6kJs+EmPFMYGkow9GiUyCyOvIwYetYJ3fSaWak/Gls=",
        version = "v1.8.5",
    )
    go_repository(
        name = "com_github_mailru_easyjson",
        importpath = "github.com/mailru/easyjson",
        sum = "h1:aizVhC/NAAcKWb+5QsU1iNOZb4Yws5UO2I+aIprQITM=",
        version = "v0.7.0",
    )
    go_repository(
        name = "com_github_maratori_testpackage",
        importpath = "github.com/maratori/testpackage",
        sum = "h1:QtJ5ZjqapShm0w5DosRjg0PRlSdAdlx+W6cCKoALdbQ=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_marstr_guid",
        importpath = "github.com/marstr/guid",
        sum = "h1:/M4H/1G4avsieL6BbUwCOBzulmoeKVP5ux/3mQNnbyI=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_masterminds_semver",
        importpath = "github.com/Masterminds/semver",
        sum = "h1:H65muMkzWKEuNDnfl9d70GUjFniHKHRbFPGBuZ3QEww=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_masterminds_semver_v3",
        importpath = "github.com/Masterminds/semver/v3",
        sum = "h1:Y2lUDsFKVRSYGojLJ1yLxSXdMmMYTYls0rCvoqmMUQk=",
        version = "v3.1.0",
    )
    go_repository(
        name = "com_github_matoous_godox",
        importpath = "github.com/matoous/godox",
        sum = "h1:RHba4YImhrUVQDHUCe2BNSOz4tVy2yGyXhvYDvxGgeE=",
        version = "v0.0.0-20190911065817-5d6d842e92eb",
    )
    go_repository(
        name = "com_github_mattn_go_colorable",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:jF+Du6AlPIjs2BiUiQlKOX0rt3SujHxPnksPKZbaA40=",
        version = "v0.1.12",
    )
    go_repository(
        name = "com_github_mattn_go_ieproxy",
        importpath = "github.com/mattn/go-ieproxy",
        sum = "h1:qiyop7gCflfhwCzGyeT0gro3sF9AIg9HU98JORTkqfI=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:yVuAays6BHfxijgZPzw+3Zlu5yQgKGP2/hcQbHb7S9Y=",
        version = "v0.0.14",
    )
    go_repository(
        name = "com_github_mattn_go_runewidth",
        importpath = "github.com/mattn/go-runewidth",
        sum = "h1:Ei8KR0497xHyKJPAv59M1dkC+rOZCMBJ+t3fZ+twI54=",
        version = "v0.0.7",
    )
    go_repository(
        name = "com_github_mattn_go_shellwords",
        importpath = "github.com/mattn/go-shellwords",
        sum = "h1:Y7Xqm8piKOO3v10Thp7Z36h4FYFjt5xB//6XvOrs2Gw=",
        version = "v1.0.10",
    )
    go_repository(
        name = "com_github_mattn_go_sqlite3",
        importpath = "github.com/mattn/go-sqlite3",
        sum = "h1:mLyGNKR8+Vv9CAU7PphKa2hkEqxxhn8i32J6FPj1/QA=",
        version = "v1.14.0",
    )
    go_repository(
        name = "com_github_mattn_go_zglob",
        importpath = "github.com/mattn/go-zglob",
        sum = "h1:xsEx/XUoVlI6yXjqBK062zYhRTZltCNmYPx6v+8DNaY=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_mattn_goveralls",
        importpath = "github.com/mattn/goveralls",
        sum = "h1:7eJB6EqsPhRVxvwEXGnqdO2sJI0PTsrWoTMXEk9/OQc=",
        version = "v0.0.2",
    )
    go_repository(
        name = "com_github_matttproud_golang_protobuf_extensions",
        importpath = "github.com/matttproud/golang_protobuf_extensions",
        sum = "h1:I0XW9+e1XWDxdcEniV4rQAIOPUGDq67JSCiRCgGCZLI=",
        version = "v1.0.2-0.20181231171920-c182affec369",
    )
    go_repository(
        name = "com_github_maxbrunsfeld_counterfeiter_v6",
        importpath = "github.com/maxbrunsfeld/counterfeiter/v6",
        sum = "h1:g+4J5sZg6osfvEfkRZxJ1em0VT95/UOZgi/l7zi1/oE=",
        version = "v6.2.2",
    )
    go_repository(
        name = "com_github_mgutz_ansi",
        importpath = "github.com/mgutz/ansi",
        sum = "h1:5PJl274Y63IEHC+7izoQE9x6ikvDFZS2mDVS3drnohI=",
        version = "v0.0.0-20200706080929-d51e80ef957d",
    )
    go_repository(
        name = "com_github_mholt_archiver_v3",
        importpath = "github.com/mholt/archiver/v3",
        sum = "h1:rDjOBX9JSF5BvoJGvjqK479aL70qh9DIpZCl+k7Clwo=",
        version = "v3.5.1",
    )
    go_repository(
        name = "com_github_microsoft_go_winio",
        importpath = "github.com/Microsoft/go-winio",
        sum = "h1:aPJp2QD7OOrhO5tQXqQoGSJc+DjDtWTGLOmNyAm6FgY=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_microsoft_hcsshim",
        importpath = "github.com/Microsoft/hcsshim",
        sum = "h1:47MSwtKGXet80aIn+7h4YI6fwPmwIghAnsx2aOUrG2M=",
        version = "v0.8.23",
    )
    go_repository(
        name = "com_github_microsoft_hcsshim_test",
        importpath = "github.com/Microsoft/hcsshim/test",
        sum = "h1:4FA+QBaydEHlwxg0lMN3rhwoDaQy6LKhVWR4qvq4BuA=",
        version = "v0.0.0-20210227013316-43a75bb4edd3",
    )
    go_repository(
        name = "com_github_miekg_dns",
        importpath = "github.com/miekg/dns",
        sum = "h1:WMszZWJG0XmzbK9FEmzH2TVcqYzFesusSIB41b8KHxY=",
        version = "v1.1.41",
    )
    go_repository(
        name = "com_github_miekg_pkcs11",
        importpath = "github.com/miekg/pkcs11",
        sum = "h1:iMwmD7I5225wv84WxIG/bmxz9AXjWvTWIbM/TYHvWtw=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_mistifyio_go_zfs",
        importpath = "github.com/mistifyio/go-zfs",
        sum = "h1:aKW/4cBs+yK6gpqU3K/oIwk9Q/XICqd3zOX/UFuvqmk=",
        version = "v2.1.2-0.20190413222219-f784269be439+incompatible",
    )
    go_repository(
        name = "com_github_mitchellh_cli",
        importpath = "github.com/mitchellh/cli",
        sum = "h1:tEElEatulEHDeedTxwckzyYMA5c86fbmNIUL1hBIiTg=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_homedir",
        importpath = "github.com/mitchellh/go-homedir",
        sum = "h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_ps",
        importpath = "github.com/mitchellh/go-ps",
        sum = "h1:9+ke9YJ9KGWw5ANXK6ozjoK47uI3uNbXv4YVINBnGm8=",
        version = "v0.0.0-20190716172923-621e5597135b",
    )
    go_repository(
        name = "com_github_mitchellh_go_testing_interface",
        importpath = "github.com/mitchellh/go-testing-interface",
        sum = "h1:fzU/JVNcaqHQEcVFAKeR41fkiLdIPrefOvVG1VZ96U0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_gox",
        importpath = "github.com/mitchellh/gox",
        sum = "h1:lfGJxY7ToLJQjHHwi0EX6uYBdK78egf954SQl13PQJc=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_mitchellh_hashstructure",
        importpath = "github.com/mitchellh/hashstructure",
        sum = "h1:P6P1hdjqAAknpY/M1CGipelZgp+4y9ja9kmUZPXP+H0=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mitchellh_hashstructure_v2",
        importpath = "github.com/mitchellh/hashstructure/v2",
        sum = "h1:vGKWl0YJqUNxE8d+h8f6NJLcCJrgbhC4NcD46KavDd4=",
        version = "v2.0.2",
    )
    go_repository(
        name = "com_github_mitchellh_iochan",
        importpath = "github.com/mitchellh/iochan",
        sum = "h1:C+X3KsSTLFVBr/tK1eYN/vs4rJcvsiLU338UhYPJWeY=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_mapstructure",
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:OVowDSCllw/YjdLkam3/sm7wEtOy59d8ndGgCcyj8cs=",
        version = "v1.4.3",
    )
    go_repository(
        name = "com_github_mitchellh_osext",
        importpath = "github.com/mitchellh/osext",
        sum = "h1:2+myh5ml7lgEU/51gbeLHfKGNfgEQQIWrlbdaOsidbQ=",
        version = "v0.0.0-20151018003038-5e2d6d41470f",
    )
    go_repository(
        name = "com_github_moby_locker",
        importpath = "github.com/moby/locker",
        sum = "h1:fOXqR41zeveg4fFODix+1Ch4mj/gT0NE1XJbp/epuBg=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_moby_sys_mountinfo",
        importpath = "github.com/moby/sys/mountinfo",
        sum = "h1:1O+1cHA1aujwEwwVMa2Xm2l+gIpUHyd3+D+d7LZh1kM=",
        version = "v0.4.1",
    )
    go_repository(
        name = "com_github_moby_sys_symlink",
        importpath = "github.com/moby/sys/symlink",
        sum = "h1:MTFZ74KtNI6qQQpuBxU+uKCim4WtOMokr03hCfJcazE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_moby_term",
        importpath = "github.com/moby/term",
        sum = "h1:dcztxKSvZ4Id8iPpHERQBbIJfabdt4wUm5qy3wOL2Zc=",
        version = "v0.0.0-20210619224110-3f7ff695adc6",
    )
    go_repository(
        name = "com_github_modern_go_concurrent",
        importpath = "github.com/modern-go/concurrent",
        sum = "h1:TRLaZ9cD/w8PVh93nsPXa1VrQ6jlwL5oN8l14QlcNfg=",
        version = "v0.0.0-20180306012644-bacd9c7ef1dd",
    )
    go_repository(
        name = "com_github_modern_go_reflect2",
        importpath = "github.com/modern-go/reflect2",
        sum = "h1:xBagoLtFs94CBntxluKeaWgTMpvLxC4ur3nMaC9Gz0M=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_morikuni_aec",
        importpath = "github.com/morikuni/aec",
        sum = "h1:nP9CBfwrvYnBRgY6qfDQkygYDmYwOilePFkwzv4dU8A=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mozilla_tls_observatory",
        importpath = "github.com/mozilla/tls-observatory",
        sum = "h1:1xJ+Xi9lYWLaaP4yB67ah0+548CD3110mCPWhVVjFkI=",
        version = "v0.0.0-20200317151703-4fa42e1c2dee",
    )
    go_repository(
        name = "com_github_mrunalp_fileutils",
        importpath = "github.com/mrunalp/fileutils",
        sum = "h1:NKzVxiH7eSk+OQ4M+ZYW1K6h27RUV3MI6NUTsHhU6Z4=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_munnerz_goautoneg",
        importpath = "github.com/munnerz/goautoneg",
        sum = "h1:C3w9PqII01/Oq1c1nUAm88MOHcQC9l5mIlSMApZMrHA=",
        version = "v0.0.0-20191010083416-a7dc8b61c822",
    )
    go_repository(
        name = "com_github_mwitkow_go_conntrack",
        importpath = "github.com/mwitkow/go-conntrack",
        sum = "h1:F9x/1yl3T2AeKLr2AMdilSD8+f9bvMnNN8VS5iDtovc=",
        version = "v0.0.0-20161129095857-cc309e4a2223",
    )
    go_repository(
        name = "com_github_mxk_go_flowrate",
        importpath = "github.com/mxk/go-flowrate",
        sum = "h1:y5//uYreIhSUg3J1GEMiLbxo1LJaP8RfCpH6pymGZus=",
        version = "v0.0.0-20140419014527-cca7078d478f",
    )
    go_repository(
        name = "com_github_nakabonne_nestif",
        importpath = "github.com/nakabonne/nestif",
        sum = "h1:+yOViDGhg8ygGrmII72nV9B/zGxY188TYpfolntsaPw=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_nbutton23_zxcvbn_go",
        importpath = "github.com/nbutton23/zxcvbn-go",
        sum = "h1:AREM5mwr4u1ORQBMvzfzBgpsctsbQikCVpvC+tX285E=",
        version = "v0.0.0-20180912185939-ae427f1e4c1d",
    )
    go_repository(
        name = "com_github_ncw_swift",
        importpath = "github.com/ncw/swift",
        sum = "h1:4DQRPj35Y41WogBxyhOXlrI37nzGlyEcsforeudyYPQ=",
        version = "v1.0.47",
    )
    go_repository(
        name = "com_github_niemeyer_pretty",
        importpath = "github.com/niemeyer/pretty",
        sum = "h1:fD57ERR4JtEqsWbfPhv4DMiApHyliiK5xCTNVSPiaAs=",
        version = "v0.0.0-20200227124842-a10e7caefd8e",
    )
    go_repository(
        name = "com_github_nwaples_rardecode",
        importpath = "github.com/nwaples/rardecode",
        sum = "h1:vSxaY8vQhOcVr4mm5e8XllHWTiM4JF507A0Katqw7MQ=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_nxadm_tail",
        importpath = "github.com/nxadm/tail",
        sum = "h1:DQuhQpB1tVlglWS2hLQ5OV6B5r8aGxSrPc5Qo6uTN78=",
        version = "v1.4.4",
    )
    go_repository(
        name = "com_github_nytimes_gziphandler",
        importpath = "github.com/NYTimes/gziphandler",
        sum = "h1:lsxEuwrXEAokXB9qhlbKWPpo3KMLZQ5WB5WLQRW1uq0=",
        version = "v0.0.0-20170623195520-56545f4a5d46",
    )
    go_repository(
        name = "com_github_oklog_ulid",
        importpath = "github.com/oklog/ulid",
        sum = "h1:EGfNDEx6MqHz8B3uNV6QAib1UR2Lm97sHi3ocA6ESJ4=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_olekukonko_tablewriter",
        importpath = "github.com/olekukonko/tablewriter",
        sum = "h1:vHD/YYe1Wolo78koG299f7V/VAS08c6IpCLn+Ejf/w8=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_oneofone_xxhash",
        importpath = "github.com/OneOfOne/xxhash",
        sum = "h1:KMrpdQIwFcEqXDklaen+P1axHaj9BSKzvpUUfnHldSE=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_onsi_ginkgo",
        importpath = "github.com/onsi/ginkgo",
        sum = "h1:mFwc4LvZ0xpSvDZ3E+k8Yte0hLOMxXUlP+yXtJqkYfQ=",
        version = "v1.12.1",
    )
    go_repository(
        name = "com_github_onsi_gomega",
        importpath = "github.com/onsi/gomega",
        sum = "h1:gph6h/qe9GSUw1NhH1gp+qb+h8rXD8Cy60Z32Qw3ELA=",
        version = "v1.10.3",
    )
    go_repository(
        name = "com_github_op_go_logging",
        importpath = "github.com/op/go-logging",
        sum = "h1:lDH9UUVJtmYCjyT0CI4q8xvlXPxeZ0gYCVvWbmPlp88=",
        version = "v0.0.0-20160315200505-970db520ece7",
    )
    go_repository(
        name = "com_github_opencontainers_go_digest",
        importpath = "github.com/opencontainers/go-digest",
        sum = "h1:apOUWs51W5PlhuyGyz9FCeeBIOUDA/6nW8Oi/yOhh5U=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_opencontainers_image_spec",
        importpath = "github.com/opencontainers/image-spec",
        sum = "h1:9yCKha/T5XdGtO0q9Q9a6T5NUCsTn/DrBg0D7ufOcFM=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_opencontainers_runc",
        importpath = "github.com/opencontainers/runc",
        sum = "h1:opHZMaswlyxz1OuGpBE53Dwe4/xF7EZTY0A2L/FpCOg=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_opencontainers_runtime_spec",
        importpath = "github.com/opencontainers/runtime-spec",
        sum = "h1:3snG66yBm59tKhhSPQrQ/0bCrv1LQbKt40LnUPiUxdc=",
        version = "v1.0.3-0.20210326190908-1c3f411f0417",
    )
    go_repository(
        name = "com_github_opencontainers_runtime_tools",
        importpath = "github.com/opencontainers/runtime-tools",
        sum = "h1:H7DMc6FAjgwZZi8BRqjrAAHWoqEr5e5L6pS4V0ezet4=",
        version = "v0.0.0-20181011054405-1d69bd0f9c39",
    )
    go_repository(
        name = "com_github_opencontainers_selinux",
        importpath = "github.com/opencontainers/selinux",
        sum = "h1:c4ca10UMgRcvZ6h0K4HtS15UaVSBEaE+iln2LVpAuGc=",
        version = "v1.8.2",
    )
    go_repository(
        name = "com_github_openpeedeep_depguard",
        importpath = "github.com/OpenPeeDeeP/depguard",
        sum = "h1:VlW4R6jmBIv3/u1JNlawEvJMM4J+dPORPaZasQee8Us=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_package_url_packageurl_go",
        importpath = "github.com/package-url/packageurl-go",
        sum = "h1:efWBc98O/dBZRg1pw2xiDzovnlMjCa9NPnfaiBduh8I=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_pascaldekloe_goe",
        importpath = "github.com/pascaldekloe/goe",
        sum = "h1:cBOtyMzM9HTpWjXfbbunk26uA6nG3a8n06Wieeh0MwY=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_pborman_uuid",
        importpath = "github.com/pborman/uuid",
        sum = "h1:J7Q5mO4ysT1dv8hyrUGHb9+ooztCXu1D8MY8DZYsu3g=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_pelletier_go_toml",
        importpath = "github.com/pelletier/go-toml",
        sum = "h1:tjENF6MfZAg8e4ZmZTeWaWiT2vXtsoO6+iuOjFhECwM=",
        version = "v1.9.4",
    )
    go_repository(
        name = "com_github_peterbourgon_diskv",
        importpath = "github.com/peterbourgon/diskv",
        sum = "h1:UBdAOUP5p4RWqPBg048CAvpKN+vxiaj6gdUUzhl4XmI=",
        version = "v2.0.1+incompatible",
    )
    go_repository(
        name = "com_github_phayes_checkstyle",
        importpath = "github.com/phayes/checkstyle",
        sum = "h1:CdDQnGF8Nq9ocOS/xlSptM1N3BbrA6/kmaep5ggwaIA=",
        version = "v0.0.0-20170904204023-bfd46e6a821d",
    )
    go_repository(
        name = "com_github_pierrec_lz4_v4",
        importpath = "github.com/pierrec/lz4/v4",
        sum = "h1:ieHkV+i2BRzngO4Wd/3HGowuZStgq6QkPsD1eolNAO4=",
        version = "v4.1.8",
    )
    go_repository(
        name = "com_github_pkg_errors",
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_pkg_profile",
        importpath = "github.com/pkg/profile",
        sum = "h1:hUDfIISABYI59DyeB3OTay/HxSRwTQ8rB/H83k6r5dM=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_pkg_sftp",
        importpath = "github.com/pkg/sftp",
        sum = "h1:VasscCm72135zRysgrJDKsntdmPN+OuU3+nnHYA9wyc=",
        version = "v1.10.1",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_posener_complete",
        importpath = "github.com/posener/complete",
        sum = "h1:NP0eAhjcjImqslEwo/1hq7gpajME0fTLTezBKDqfXqo=",
        version = "v1.2.3",
    )
    go_repository(
        name = "com_github_pquerna_cachecontrol",
        importpath = "github.com/pquerna/cachecontrol",
        sum = "h1:0XM1XL/OFFJjXsYXlG30spTkV/E9+gmd5GD1w2HE8xM=",
        version = "v0.0.0-20171018203845-0dec1b30a021",
    )
    go_repository(
        name = "com_github_prometheus_client_golang",
        importpath = "github.com/prometheus/client_golang",
        sum = "h1:NTGy1Ja9pByO+xAeH/qiWnLrKtr3hJPNjaVUwnjpdpA=",
        version = "v1.7.1",
    )
    go_repository(
        name = "com_github_prometheus_client_model",
        importpath = "github.com/prometheus/client_model",
        sum = "h1:uq5h0d+GuxiXLJLNABMgp2qUWDPiLvgCzz2dUR+/W/M=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_prometheus_common",
        importpath = "github.com/prometheus/common",
        sum = "h1:RyRA7RzGXQZiW+tGMr7sxa85G1z0yOpM1qq5c8lNawc=",
        version = "v0.10.0",
    )
    go_repository(
        name = "com_github_prometheus_procfs",
        importpath = "github.com/prometheus/procfs",
        sum = "h1:mxy4L2jP6qMonqmq+aTtOx1ifVWUgG/TAmntgbh3xv4=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_prometheus_tsdb",
        importpath = "github.com/prometheus/tsdb",
        sum = "h1:YZcsG11NqnK4czYLrWd9mpEuAJIHVQLwdrleYfszMAA=",
        version = "v0.7.1",
    )
    go_repository(
        name = "com_github_puerkitobio_goquery",
        importpath = "github.com/PuerkitoBio/goquery",
        sum = "h1:PSPBGne8NIUWw+/7vFBV+kG2J/5MOjbzc7154OaKCSE=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_puerkitobio_purell",
        importpath = "github.com/PuerkitoBio/purell",
        sum = "h1:WEQqlqaGbrPkxLJWfBwQmfEAE1Z7ONdDLqrN38tNFfI=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_puerkitobio_urlesc",
        importpath = "github.com/PuerkitoBio/urlesc",
        sum = "h1:d+Bc7a5rLufV/sSk/8dngufqelfh6jnri85riMAaF/M=",
        version = "v0.0.0-20170810143723-de5bf2ad4578",
    )
    go_repository(
        name = "com_github_quasilyte_go_consistent",
        importpath = "github.com/quasilyte/go-consistent",
        sum = "h1:JoUA0uz9U0FVFq5p4LjEq4C0VgQ0El320s3Ms0V4eww=",
        version = "v0.0.0-20190521200055-c6f3937de18c",
    )
    go_repository(
        name = "com_github_quasilyte_go_ruleguard",
        importpath = "github.com/quasilyte/go-ruleguard",
        sum = "h1:DvnesvLtRPQOvaUbfXfh0tpMHg29by0H7F2U+QIkSu8=",
        version = "v0.1.2-0.20200318202121-b00d7a75d3d8",
    )
    go_repository(
        name = "com_github_remyoudompheng_bigfft",
        importpath = "github.com/remyoudompheng/bigfft",
        sum = "h1:/NRJ5vAYoqz+7sG51ubIDHXeWO8DlTSrToPu6q11ziA=",
        version = "v0.0.0-20170806203942-52369c62f446",
    )
    go_repository(
        name = "com_github_rogpeppe_fastuuid",
        importpath = "github.com/rogpeppe/fastuuid",
        sum = "h1:Ppwyp6VYCF1nvBTXL3trRso7mXMlRrw9ooo375wvi2s=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:qLvObTrvO/XRCqmkKxUlOBc48bI3efyDuAZe25QiF0w=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_rubiojr_go_vhd",
        importpath = "github.com/rubiojr/go-vhd",
        sum = "h1:ht7N4d/B7Ezf58nvMNVF3OlvDlz9pp+WHVcRNS0nink=",
        version = "v0.0.0-20160810183302-0bfd3b39853c",
    )
    go_repository(
        name = "com_github_russross_blackfriday",
        importpath = "github.com/russross/blackfriday",
        sum = "h1:HyvC0ARfnZBqnXwABFeSZHpKvJHJJfPz81GNueLj0oo=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_russross_blackfriday_v2",
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:JIOH55/0cWyOuilr9/qlrm0BSXldqnqwMsf35Ld67mk=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_ryancurrah_gomodguard",
        importpath = "github.com/ryancurrah/gomodguard",
        sum = "h1:DWbye9KyMgytn8uYpuHkwf0RHqAYO6Ay/D0TbCpPtVU=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_ryanuber_columnize",
        importpath = "github.com/ryanuber/columnize",
        sum = "h1:UFr9zpz4xgTnIE5yIMtWAMngCdZ9p/+q6lTbgelo80M=",
        version = "v0.0.0-20160712163229-9b3edd62028f",
    )
    go_repository(
        name = "com_github_safchain_ethtool",
        importpath = "github.com/safchain/ethtool",
        sum = "h1:2c1EFnZHIPCW8qKWgHMH/fX2PkSabFc5mrVzfUNdg5U=",
        version = "v0.0.0-20190326074333-42ed695e3de8",
    )
    go_repository(
        name = "com_github_sagikazarmark_crypt",
        importpath = "github.com/sagikazarmark/crypt",
        sum = "h1:TV5DVog+pihN4Rr0rN1IClv4ePpkzdg9sPrw7WDofZ8=",
        version = "v0.3.0",
    )

    go_repository(
        name = "com_github_sassoftware_go_rpmutils",
        importpath = "github.com/sassoftware/go-rpmutils",
        sum = "h1:+gCnWOZV8Z/8jehJ2CdqB47Z3S+SREmQcuXkRFLNsiI=",
        version = "v0.0.0-20190420191620-a8f1baeba37b",
    )
    go_repository(
        name = "com_github_satori_go_uuid",
        importpath = "github.com/satori/go.uuid",
        sum = "h1:0uYX9dsZ2yD7q2RtLRtPSdGDWzjeM3TbMJP9utgA0ww=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_sclevine_spec",
        importpath = "github.com/sclevine/spec",
        sum = "h1:1Jwdf9jSfDl9NVmt8ndHqbTZ7XCCPbh1jI3hkDBHVYA=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_scylladb_go_set",
        importpath = "github.com/scylladb/go-set",
        sum = "h1:SkvlMCKhP0wyyct6j+0IHJkBkSZL+TDzZ4E7f7BCcRE=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_sean_seed",
        importpath = "github.com/sean-/seed",
        sum = "h1:nn5Wsu0esKSJiIVhscUtVbo7ada43DJhG55ua/hjS5I=",
        version = "v0.0.0-20170313163322-e2103e2c3529",
    )
    go_repository(
        name = "com_github_seccomp_libseccomp_golang",
        importpath = "github.com/seccomp/libseccomp-golang",
        sum = "h1:NJjM5DNFOs0s3kYE1WUOr6G8V97sdt46rlXTMfXGWBo=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_securego_gosec",
        importpath = "github.com/securego/gosec",
        sum = "h1:rq2/kILQnPtq5oL4+IAjgVOjh5e2yj2aaCYi7squEvI=",
        version = "v0.0.0-20200401082031-e946c8c39989",
    )
    go_repository(
        name = "com_github_securego_gosec_v2",
        importpath = "github.com/securego/gosec/v2",
        sum = "h1:y/9mCF2WPDbSDpL3QDWZD3HHGrSYw0QSHnCqTfs4JPE=",
        version = "v2.3.0",
    )
    go_repository(
        name = "com_github_sergi_go_diff",
        importpath = "github.com/sergi/go-diff",
        sum = "h1:we8PVUC3FE2uYfodKH/nBHMSetSfHDR6scGdBi+erh0=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_shirou_gopsutil",
        importpath = "github.com/shirou/gopsutil",
        sum = "h1:WokF3GuxBeL+n4Lk4Fa8v9mbdjlrl7bHuneF4N1bk2I=",
        version = "v0.0.0-20190901111213-e4ec7b275ada",
    )
    go_repository(
        name = "com_github_shirou_w32",
        importpath = "github.com/shirou/w32",
        sum = "h1:udFKJ0aHUL60LboW/A+DfgoHVedieIzIXE8uylPue0U=",
        version = "v0.0.0-20160930032740-bb4de0191aa4",
    )
    go_repository(
        name = "com_github_shopify_logrus_bugsnag",
        importpath = "github.com/Shopify/logrus-bugsnag",
        sum = "h1:UrqY+r/OJnIp5u0s1SbQ8dVfLCZJsnvazdBP5hS4iRs=",
        version = "v0.0.0-20171204204709-577dee27f20d",
    )
    go_repository(
        name = "com_github_shurcool_go",
        importpath = "github.com/shurcooL/go",
        sum = "h1:MZM7FHLqUHYI0Y/mQAt3d2aYa0SiNms/hFqC9qJYolM=",
        version = "v0.0.0-20180423040247-9e1955d9fb6e",
    )
    go_repository(
        name = "com_github_shurcool_go_goon",
        importpath = "github.com/shurcooL/go-goon",
        sum = "h1:llrF3Fs4018ePo4+G/HV/uQUqEI1HMDjCeOf2V6puPc=",
        version = "v0.0.0-20170922171312-37c2f522c041",
    )
    go_repository(
        name = "com_github_shurcool_sanitized_anchor_name",
        importpath = "github.com/shurcooL/sanitized_anchor_name",
        sum = "h1:PdmoCO6wvbs+7yrJyMORt4/BmY5IYyJwS/kOiWx8mHo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_sirupsen_logrus",
        importpath = "github.com/sirupsen/logrus",
        sum = "h1:dJKuHgqk1NNQlqoA6BTlM1Wf9DOH3NBjQyu0h9+AZZE=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_smartystreets_assertions",
        importpath = "github.com/smartystreets/assertions",
        sum = "h1:UVQPSSmc3qtTi+zPPkCXvZX9VvW/xT/NsRvKfwY81a8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_smartystreets_go_aws_auth",
        importpath = "github.com/smartystreets/go-aws-auth",
        sum = "h1:hp2CYQUINdZMHdvTdXtPOY2ainKl4IoMcpAXEf2xj3Q=",
        version = "v0.0.0-20180515143844-0c1422d1fdb9",
    )
    go_repository(
        name = "com_github_smartystreets_goconvey",
        importpath = "github.com/smartystreets/goconvey",
        sum = "h1:fv0U8FUIMPNf1L9lnHLvLhgicrIVChEkdzIKYqbNC9s=",
        version = "v1.6.4",
    )
    go_repository(
        name = "com_github_smartystreets_gunit",
        importpath = "github.com/smartystreets/gunit",
        sum = "h1:RyPDUFcJbvtXlhJPk7v+wnxZRY2EUokhEYl2EJOPToI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_soheilhy_cmux",
        importpath = "github.com/soheilhy/cmux",
        sum = "h1:0HKaf1o97UwFjHH9o5XsHUOF+tqmdA7KEzXLpiyaw0E=",
        version = "v0.1.4",
    )
    go_repository(
        name = "com_github_sourcegraph_go_diff",
        importpath = "github.com/sourcegraph/go-diff",
        sum = "h1:lhIKJ2nXLZZ+AfbHpYxTn0pXpNTTui0DX7DO3xeb1Zs=",
        version = "v0.5.3",
    )
    go_repository(
        name = "com_github_spaolacci_murmur3",
        importpath = "github.com/spaolacci/murmur3",
        sum = "h1:qLC7fQah7D6K1B0ujays3HV9gkFtllcxhzImRR7ArPQ=",
        version = "v0.0.0-20180118202830-f09979ecbc72",
    )
    go_repository(
        name = "com_github_spdx_gordf",
        importpath = "github.com/spdx/gordf",
        sum = "h1:bLo8hvc8XFm9J47r690TUKBzcjSWdJDxmjXJZ+/f92U=",
        version = "v0.0.0-20201111095634-7098f93598fb",
    )
    go_repository(
        name = "com_github_spdx_tools_golang",
        importpath = "github.com/spdx/tools-golang",
        sum = "h1:iDMNEPqQk6CdiDj6eWDIDw85j0wQ3IR3pH9p0X05TSQ=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_spf13_afero",
        importpath = "github.com/spf13/afero",
        sum = "h1:xoax2sJ2DT8S8xA2paPFjDCScCNeWsg75VG0DLRreiY=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_spf13_cast",
        importpath = "github.com/spf13/cast",
        sum = "h1:s0hze+J0196ZfEMTs80N7UlFt0BDuQ7Q+JDnHiMWKdA=",
        version = "v1.4.1",
    )
    go_repository(
        name = "com_github_spf13_cobra",
        importpath = "github.com/spf13/cobra",
        sum = "h1:R7cSvGu+Vv+qX0gW5R/85dx2kmmJT5z5NM8ifdYjdn0=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_spf13_jwalterweatherman",
        importpath = "github.com/spf13/jwalterweatherman",
        sum = "h1:ue6voC5bR5F8YxI5S67j9i582FU4Qvo2bmqnqMYADFk=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_spf13_pflag",
        importpath = "github.com/spf13/pflag",
        sum = "h1:iy+VFUOCP1a+8yFto/drg2CJ5u0yRoB7fZw3DKv/JXA=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_spf13_viper",
        importpath = "github.com/spf13/viper",
        sum = "h1:mXH0UwHS4D2HwWZa75im4xIQynLfblmWV7qcWpfv0yk=",
        version = "v1.10.0",
    )
    go_repository(
        name = "com_github_stackexchange_wmi",
        importpath = "github.com/StackExchange/wmi",
        sum = "h1:fLjPD/aNc3UIOA6tDi6QXUemppXK3P9BI7mr2hd6gx8=",
        version = "v0.0.0-20180116203802-5d049714c4a6",
    )
    go_repository(
        name = "com_github_stefanberger_go_pkcs11uri",
        importpath = "github.com/stefanberger/go-pkcs11uri",
        sum = "h1:lIOOHPEbXzO3vnmx2gok1Tfs31Q8GQqKLc8vVqyQq/I=",
        version = "v0.0.0-20201008174630-78d3cae3a980",
    )
    go_repository(
        name = "com_github_stretchr_objx",
        importpath = "github.com/stretchr/objx",
        sum = "h1:Hbg2NidpLE8veEBkEZTL3CvlkUIVzuU9jDplZO54c48=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        importpath = "github.com/stretchr/testify",
        sum = "h1:nwc3DEeHmmLAfoZucVR881uASk0Mfjw8xYJ99tb5CcY=",
        version = "v1.7.0",
    )
    go_repository(
        name = "com_github_subosito_gotenv",
        importpath = "github.com/subosito/gotenv",
        sum = "h1:Slr1R9HxAlEKefgq5jn9U+DnETlIUa6HfgEzj0g5d7s=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_syndtr_gocapability",
        importpath = "github.com/syndtr/gocapability",
        sum = "h1:kdXcSzyDtseVEc4yCz2qF8ZrQvIDBJLl4S1c3GCXmoI=",
        version = "v0.0.0-20200815063812-42c35b437635",
    )
    go_repository(
        name = "com_github_tchap_go_patricia",
        importpath = "github.com/tchap/go-patricia",
        sum = "h1:JvoDL7JSoIP2HDE8AbDH3zC8QBPxmzYe32HHy5yQ+Ck=",
        version = "v2.2.6+incompatible",
    )
    go_repository(
        name = "com_github_tdakkota_asciicheck",
        importpath = "github.com/tdakkota/asciicheck",
        sum = "h1:HxLVTlqcHhFAz3nWUcuvpH7WuOMv8LQoCWmruLfFH2U=",
        version = "v0.0.0-20200416200610-e657995f937b",
    )
    go_repository(
        name = "com_github_tetafro_godot",
        importpath = "github.com/tetafro/godot",
        sum = "h1:Dib7un+rYJFUi8vN0Bk6EHheKy6fv6ZzFURHw75g6m8=",
        version = "v0.4.2",
    )
    go_repository(
        name = "com_github_timakin_bodyclose",
        importpath = "github.com/timakin/bodyclose",
        sum = "h1:ig99OeTyDwQWhPe2iw9lwfQVF1KB3Q4fpP3X7/2VBG8=",
        version = "v0.0.0-20200424151742-cb6215831a94",
    )
    go_repository(
        name = "com_github_tj_assert",
        importpath = "github.com/tj/assert",
        sum = "h1:Rw8kxzWo1mr6FSaYXjQELRe88y2KdfynXdnK72rdjtA=",
        version = "v0.0.0-20171129193455-018094318fb0",
    )
    go_repository(
        name = "com_github_tj_go_elastic",
        importpath = "github.com/tj/go-elastic",
        sum = "h1:eGaGNxrtoZf/mBURsnNQKDR7u50Klgcf2eFDQEnc8Bc=",
        version = "v0.0.0-20171221160941-36157cbbebc2",
    )
    go_repository(
        name = "com_github_tj_go_kinesis",
        importpath = "github.com/tj/go-kinesis",
        sum = "h1:m74UWYy+HBs+jMFR9mdZU6shPewugMyH5+GV6LNgW8w=",
        version = "v0.0.0-20171128231115-08b17f58cb1b",
    )
    go_repository(
        name = "com_github_tj_go_spin",
        importpath = "github.com/tj/go-spin",
        sum = "h1:lhdWZsvImxvZ3q1C5OIB7d72DuOwP4O2NdBg9PyzNds=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_tmc_grpc_websocket_proxy",
        importpath = "github.com/tmc/grpc-websocket-proxy",
        sum = "h1:LnC5Kc/wtumK+WB441p7ynQJzVuNRJiqddSIE3IlSEQ=",
        version = "v0.0.0-20190109142713-0ad062ec5ee5",
    )
    go_repository(
        name = "com_github_tommy_muehle_go_mnd",
        importpath = "github.com/tommy-muehle/go-mnd",
        sum = "h1:RC4maTWLKKwb7p1cnoygsbKIgNlJqSYBeAFON3Ar8As=",
        version = "v1.3.1-0.20200224220436-e6f9a994e8fa",
    )
    go_repository(
        name = "com_github_tv42_httpunix",
        importpath = "github.com/tv42/httpunix",
        sum = "h1:G3dpKMzFDjgEh2q1Z7zUUtKa8ViPtH+ocF0bE0g00O8=",
        version = "v0.0.0-20150427012821-b75d8614f926",
    )

    go_repository(
        name = "com_github_ugorji_go",
        importpath = "github.com/ugorji/go",
        sum = "h1:j4s+tAvLfL3bZyefP2SEWmhBzmuIlH/eqNuPdFPgngw=",
        version = "v1.1.4",
    )
    go_repository(
        name = "com_github_ugorji_go_codec",
        importpath = "github.com/ugorji/go/codec",
        sum = "h1:3SVOIvH7Ae1KRYyQWRjXWJEA9sS/c/pjvH++55Gr648=",
        version = "v0.0.0-20181204163529-d75b2dcb6bc8",
    )
    go_repository(
        name = "com_github_ulikunitz_xz",
        importpath = "github.com/ulikunitz/xz",
        sum = "h1:RsKRIA2MO8x56wkkcd3LbtcE/uMszhb6DpRf+3uwa3I=",
        version = "v0.5.9",
    )
    go_repository(
        name = "com_github_ultraware_funlen",
        importpath = "github.com/ultraware/funlen",
        sum = "h1:Av96YVBwwNSe4MLR7iI/BIa3VyI7/djnto/pK3Uxbdo=",
        version = "v0.0.2",
    )
    go_repository(
        name = "com_github_ultraware_whitespace",
        importpath = "github.com/ultraware/whitespace",
        sum = "h1:If7Va4cM03mpgrNH9k49/VOicWpGoG70XPBFFODYDsg=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_urfave_cli",
        importpath = "github.com/urfave/cli",
        sum = "h1:u7tSpNPPswAFymm8IehJhy4uJMlUuU/GmqSkvJ1InXA=",
        version = "v1.22.4",
    )
    go_repository(
        name = "com_github_uudashr_gocognit",
        importpath = "github.com/uudashr/gocognit",
        sum = "h1:MoG2fZ0b/Eo7NXoIwCVFLG5JED3qgQz5/NEE+rOsjPs=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_valyala_bytebufferpool",
        importpath = "github.com/valyala/bytebufferpool",
        sum = "h1:GqA5TC/0021Y/b9FG4Oi9Mr3q7XYx6KllzawFIhcdPw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_valyala_fasthttp",
        importpath = "github.com/valyala/fasthttp",
        sum = "h1:dzZJf2IuMiclVjdw0kkT+f9u4YdrapbNyGAN47E/qnk=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_valyala_quicktemplate",
        importpath = "github.com/valyala/quicktemplate",
        sum = "h1:BaO1nHTkspYzmAjPXj0QiDJxai96tlcZyKcI9dyEGvM=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_valyala_tcplisten",
        importpath = "github.com/valyala/tcplisten",
        sum = "h1:0R4NLDRDZX6JcmhJgXi5E4b8Wg84ihbmUKp/GvSPEzc=",
        version = "v0.0.0-20161114210144-ceec8f93295a",
    )
    go_repository(
        name = "com_github_vbatts_tar_split",
        importpath = "github.com/vbatts/tar-split",
        sum = "h1:Via6XqJr0hceW4wff3QRzD5gAk/tatMw/4ZA7cTlIME=",
        version = "v0.11.2",
    )
    go_repository(
        name = "com_github_vdemeester_k8s_pkg_credentialprovider",
        importpath = "github.com/vdemeester/k8s-pkg-credentialprovider",
        sum = "h1:czKEIG2Q3YRTgs6x/8xhjVMJD5byPo6cZuostkbTM74=",
        version = "v1.17.4",
    )
    go_repository(
        name = "com_github_vifraa_gopom",
        importpath = "github.com/vifraa/gopom",
        sum = "h1:v897eVxf6lflkEXzPmKbo4YhX2oS/LGjz7cqjWnSmCU=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_vishvananda_netlink",
        importpath = "github.com/vishvananda/netlink",
        sum = "h1:cPXZWzzG0NllBLdjWoD1nDfaqu98YMv+OneaKc8sPOA=",
        version = "v1.1.1-0.20201029203352-d40f9887b852",
    )
    go_repository(
        name = "com_github_vishvananda_netns",
        importpath = "github.com/vishvananda/netns",
        sum = "h1:4hwBBUfQCFe3Cym0ZtKyq7L16eZUtYKs+BaHDN6mAns=",
        version = "v0.0.0-20200728191858-db3c7e526aae",
    )
    go_repository(
        name = "com_github_vmware_govmomi",
        importpath = "github.com/vmware/govmomi",
        sum = "h1:gpw/0Ku+6RgF3jsi7fnCLmlcikBHfKBCUcu1qgc16OU=",
        version = "v0.20.3",
    )
    go_repository(
        name = "com_github_wagoodman_go_partybus",
        importpath = "github.com/wagoodman/go-partybus",
        sum = "h1:phTLPgMRDYTizrBSKsNSOa2zthoC2KsJsaY/8sg3rD8=",
        version = "v0.0.0-20210627031916-db1f5573bbc5",
    )
    go_repository(
        name = "com_github_wagoodman_go_progress",
        importpath = "github.com/wagoodman/go-progress",
        sum = "h1:ULknorKcCigmaFEBfB99pzEQmYY2E0F5Yp/bIyaBdEI=",
        version = "v0.0.0-20200807221327-51d465df1451",
    )
    go_repository(
        name = "com_github_wagoodman_jotframe",
        importpath = "github.com/wagoodman/jotframe",
        sum = "h1:Yz6VVOcLuWLAHYlJzTw7JKnWxdV/WXpug2X0quEzRnY=",
        version = "v0.0.0-20211129225309-56b0d0a4aebb",
    )
    go_repository(
        name = "com_github_willf_bitset",
        importpath = "github.com/willf/bitset",
        sum = "h1:N7Z7E9UvjW+sGsEl7k/SJrvY2reP1A07MrGuCjIOjRE=",
        version = "v1.1.11",
    )
    go_repository(
        name = "com_github_x_cray_logrus_prefixed_formatter",
        importpath = "github.com/x-cray/logrus-prefixed-formatter",
        sum = "h1:00txxvfBM9muc0jiLIEAkAcIMJzfthRT6usrui8uGmg=",
        version = "v0.5.2",
    )
    go_repository(
        name = "com_github_xanzy_go_gitlab",
        importpath = "github.com/xanzy/go-gitlab",
        sum = "h1:tBm+OXv1t+KBsqlXkSDFz+YUjRM0GFsjpOWYOod3Ebs=",
        version = "v0.32.0",
    )
    go_repository(
        name = "com_github_xeipuuv_gojsonpointer",
        importpath = "github.com/xeipuuv/gojsonpointer",
        sum = "h1:J9EGpcZtP0E/raorCMxlFGSTBrsSlaDGf3jU/qvAE2c=",
        version = "v0.0.0-20180127040702-4e3ac2762d5f",
    )
    go_repository(
        name = "com_github_xeipuuv_gojsonreference",
        importpath = "github.com/xeipuuv/gojsonreference",
        sum = "h1:EzJWgHovont7NscjpAxXsDA8S8BMYve8Y5+7cuRE7R0=",
        version = "v0.0.0-20180127040603-bd5ef7bd5415",
    )
    go_repository(
        name = "com_github_xeipuuv_gojsonschema",
        importpath = "github.com/xeipuuv/gojsonschema",
        sum = "h1:LhYJRs+L4fBtjZUfuSZIKGeVu0QRy8e5Xi7D17UxZ74=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_xi2_xz",
        importpath = "github.com/xi2/xz",
        sum = "h1:nIPpBwaJSVYIxUFsDv3M8ofmx9yWTog9BfvIu0q41lo=",
        version = "v0.0.0-20171230120015-48954b6210f8",
    )
    go_repository(
        name = "com_github_xiang90_probing",
        importpath = "github.com/xiang90/probing",
        sum = "h1:eY9dn8+vbi4tKz5Qo6v2eYzo7kUS51QINcR5jNpbZS8=",
        version = "v0.0.0-20190116061207-43a291ad63a2",
    )
    go_repository(
        name = "com_github_xo_terminfo",
        importpath = "github.com/xo/terminfo",
        sum = "h1:QldyIu/L63oPpyvQmHgvgickp1Yw510KJOqX7H24mg8=",
        version = "v0.0.0-20210125001918-ca9a967f8778",
    )
    go_repository(
        name = "com_github_xordataexchange_crypt",
        importpath = "github.com/xordataexchange/crypt",
        sum = "h1:ESFSdwYZvkeru3RtdrYueztKhOBCSAAzS4Gf+k0tEow=",
        version = "v0.0.3-0.20170626215501-b2862e3d0a77",
    )
    go_repository(
        name = "com_github_yuin_goldmark",
        importpath = "github.com/yuin/goldmark",
        sum = "h1:dPmz1Snjq0kmkz159iL7S6WzdahUTHnHB5M56WFVifs=",
        version = "v1.3.5",
    )
    go_repository(
        name = "com_github_yvasiyarov_go_metrics",
        importpath = "github.com/yvasiyarov/go-metrics",
        sum = "h1:+lm10QQTNSBd8DVTNGHx7o/IKu9HYDvLMffDhbyLccI=",
        version = "v0.0.0-20140926110328-57bccd1ccd43",
    )
    go_repository(
        name = "com_github_yvasiyarov_gorelic",
        importpath = "github.com/yvasiyarov/gorelic",
        sum = "h1:hlE8//ciYMztlGpl/VA+Zm1AcTPHYkHJPbHqE6WJUXE=",
        version = "v0.0.0-20141212073537-a9bba5b9ab50",
    )
    go_repository(
        name = "com_github_yvasiyarov_newrelic_platform_go",
        importpath = "github.com/yvasiyarov/newrelic_platform_go",
        sum = "h1:ERexzlUfuTvpE74urLSbIQW0Z/6hF9t8U4NsJLaioAY=",
        version = "v0.0.0-20140908184405-b21fdbd4370f",
    )
    go_repository(
        name = "com_google_cloud_go",
        importpath = "cloud.google.com/go",
        sum = "h1:y/cM2iqGgGi5D5DQZl6D9STN/3dR/Vx5Mp8s752oJTY=",
        version = "v0.99.0",
    )
    go_repository(
        name = "com_google_cloud_go_bigquery",
        importpath = "cloud.google.com/go/bigquery",
        sum = "h1:PQcPefKFdaIzjQFbiyOgAqyx8q5djaE7x9Sqe712DPA=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_google_cloud_go_datastore",
        importpath = "cloud.google.com/go/datastore",
        sum = "h1:/May9ojXjRkPBNVrq+oWLqmWCkr4OU5uRY29bu0mRyQ=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_google_cloud_go_firestore",
        importpath = "cloud.google.com/go/firestore",
        sum = "h1:8rBq3zRjnHx8UtBvaOWqBB1xq9jH6/wltfQLlTMh2Fw=",
        version = "v1.6.1",
    )
    go_repository(
        name = "com_google_cloud_go_pubsub",
        importpath = "cloud.google.com/go/pubsub",
        sum = "h1:ukjixP1wl0LpnZ6LWtZJ0mX5tBmjp1f8Sqer8Z2OMUU=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_google_cloud_go_storage",
        importpath = "cloud.google.com/go/storage",
        sum = "h1:STgFzyU5/8miMl0//zKh2aQeTyeaUH3WN9bSUiJ09bA=",
        version = "v1.10.0",
    )
    go_repository(
        name = "com_shuralyov_dmitri_gpu_mtl",
        importpath = "dmitri.shuralyov.com/gpu/mtl",
        sum = "h1:VpgP7xuJadIUuKccphEpTJnWhS2jkQyMt6Y7pJCD7fY=",
        version = "v0.0.0-20190408044501-666a987793e9",
    )
    go_repository(
        name = "com_sourcegraph_sqs_pbtypes",
        importpath = "sourcegraph.com/sqs/pbtypes",
        sum = "h1:f7lAwqviDEGvON4kRv0o5V7FT/IQK+tbkF664XMbP3o=",
        version = "v1.0.0",
    )
    go_repository(
        name = "dev_gocloud",
        importpath = "gocloud.dev",
        sum = "h1:EDRyaRAnMGSq/QBto486gWFxMLczAfIYUmusV7XLNBM=",
        version = "v0.19.0",
    )
    go_repository(
        name = "in_gopkg_airbrake_gobrake_v2",
        importpath = "gopkg.in/airbrake/gobrake.v2",
        sum = "h1:7z2uVWwn7oVeeugY1DtlPAy5H+KYgB1KeKTnqjNatLo=",
        version = "v2.0.9",
    )
    go_repository(
        name = "in_gopkg_alecthomas_kingpin_v2",
        importpath = "gopkg.in/alecthomas/kingpin.v2",
        sum = "h1:jMFz6MfLP0/4fUyZle81rXUoxOBFi19VUFKVDOQfozc=",
        version = "v2.2.6",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        importpath = "gopkg.in/check.v1",
        sum = "h1:Hei/4ADfdWqJk1ZMxUNpqntNwaWcugrBjAiHlqqRiVk=",
        version = "v1.0.0-20201130134442-10cb98267c6c",
    )
    go_repository(
        name = "in_gopkg_cheggaaa_pb_v1",
        importpath = "gopkg.in/cheggaaa/pb.v1",
        sum = "h1:kJdccidYzt3CaHD1crCFTS1hxyhSi059NhOFUf03YFo=",
        version = "v1.0.27",
    )
    go_repository(
        name = "in_gopkg_errgo_v2",
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )
    go_repository(
        name = "in_gopkg_fsnotify_v1",
        importpath = "gopkg.in/fsnotify.v1",
        sum = "h1:xOHLXZwVvI9hhs+cLKq5+I5onOuwQLhQwiu63xxlHs4=",
        version = "v1.4.7",
    )
    go_repository(
        name = "in_gopkg_gcfg_v1",
        importpath = "gopkg.in/gcfg.v1",
        sum = "h1:0HIbH907iBTAntm+88IJV2qmJALDAh8sPekI9Vc1fm0=",
        version = "v1.2.0",
    )
    go_repository(
        name = "in_gopkg_gemnasium_logrus_airbrake_hook_v2",
        importpath = "gopkg.in/gemnasium/logrus-airbrake-hook.v2",
        sum = "h1:OAj3g0cR6Dx/R07QgQe8wkA9RNjB2u4i700xBkIT4e0=",
        version = "v2.1.2",
    )
    go_repository(
        name = "in_gopkg_inf_v0",
        importpath = "gopkg.in/inf.v0",
        sum = "h1:73M5CoZyi3ZLMOyDlQh031Cx6N9NDJ2Vvfl76EDAgDc=",
        version = "v0.9.1",
    )
    go_repository(
        name = "in_gopkg_ini_v1",
        importpath = "gopkg.in/ini.v1",
        sum = "h1:XfR1dOYubytKy4Shzc2LHrrGhU0lDCfDGG1yLPmpgsI=",
        version = "v1.66.2",
    )
    go_repository(
        name = "in_gopkg_natefinch_lumberjack_v2",
        importpath = "gopkg.in/natefinch/lumberjack.v2",
        sum = "h1:1Lc07Kr7qY4U2YPouBjpCLxpiyxIVoxqXgkXLknAOE8=",
        version = "v2.0.0",
    )
    go_repository(
        name = "in_gopkg_resty_v1",
        importpath = "gopkg.in/resty.v1",
        sum = "h1:CuXP0Pjfw9rOuY6EP+UvtNvt5DSqHpIxILZKT/quCZI=",
        version = "v1.12.0",
    )
    go_repository(
        name = "in_gopkg_square_go_jose_v2",
        importpath = "gopkg.in/square/go-jose.v2",
        sum = "h1:7odma5RETjNHWJnR32wx8t+Io4djHE1PqxCFx3iiZ2w=",
        version = "v2.5.1",
    )
    go_repository(
        name = "in_gopkg_tomb_v1",
        importpath = "gopkg.in/tomb.v1",
        sum = "h1:uRGJdciOHaEIrze2W8Q3AKkepLTh2hOroT7a+7czfdQ=",
        version = "v1.0.0-20141024135613-dd632973f1e7",
    )
    go_repository(
        name = "in_gopkg_warnings_v0",
        importpath = "gopkg.in/warnings.v0",
        sum = "h1:XM28wIgFzaBmeZ5dNHIpWLQpt/9DGKxk+rCg/22nnYE=",
        version = "v0.1.1",
    )
    go_repository(
        name = "in_gopkg_yaml_v2",
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:D8xgwECY7CYvx+Y2n4sBz93Jn9JRvxdiyyo8CTfuKaY=",
        version = "v2.4.0",
    )
    go_repository(
        name = "in_gopkg_yaml_v3",
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:h8qDotaEPuJATrMmW04NCwg7v22aHH28wwpauUhK9Oo=",
        version = "v3.0.0-20210107192922-496545a6307b",
    )
    go_repository(
        name = "io_etcd_go_bbolt",
        importpath = "go.etcd.io/bbolt",
        sum = "h1:XAzx9gjCb0Rxj7EoqcClPD1d5ZBxZJk0jbuoPHenBt0=",
        version = "v1.3.5",
    )
    go_repository(
        name = "io_etcd_go_etcd",
        importpath = "go.etcd.io/etcd",
        sum = "h1:1JFLBqwIgdyHN1ZtgjTBwO+blA6gVOmZurpiMEsETKo=",
        version = "v0.5.0-alpha.5.0.20200910180754-dd1b699fc489",
    )
    go_repository(
        name = "io_etcd_go_etcd_api_v3",
        importpath = "go.etcd.io/etcd/api/v3",
        sum = "h1:v28cktvBq+7vGyJXF8G+rWJmj+1XUmMtqcLnH8hDocM=",
        version = "v3.5.1",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_pkg_v3",
        importpath = "go.etcd.io/etcd/client/pkg/v3",
        sum = "h1:XIQcHCFSG53bJETYeRJtIxdLv2EWRGxcfzR8lSnTH4E=",
        version = "v3.5.1",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_v2",
        importpath = "go.etcd.io/etcd/client/v2",
        sum = "h1:vtxYCKWA9x31w0WJj7DdqsHFNjhkigdAnziDtkZb/l4=",
        version = "v2.305.1",
    )
    go_repository(
        name = "io_gitea_code_sdk_gitea",
        importpath = "code.gitea.io/sdk/gitea",
        sum = "h1:hvDCz4wtFvo7rf5Ebj8tGd4aJ4wLPKX3BKFX9Dk1Pgs=",
        version = "v0.12.0",
    )
    go_repository(
        name = "io_k8s_api",
        importpath = "k8s.io/api",
        sum = "h1:bgdZrW++LqgrLikWYNruIKAtltXbSCX2l5mJu11hrVE=",
        version = "v0.20.6",
    )
    go_repository(
        name = "io_k8s_apimachinery",
        importpath = "k8s.io/apimachinery",
        sum = "h1:R5p3SlhaABYShQSO6LpPsYHjV05Q+79eBUR0Ut/f4tk=",
        version = "v0.20.6",
    )
    go_repository(
        name = "io_k8s_apiserver",
        importpath = "k8s.io/apiserver",
        sum = "h1:NnVriMMOpqQX+dshbDoZixqmBhfgrPk2uOh2fzp9vHE=",
        version = "v0.20.6",
    )
    go_repository(
        name = "io_k8s_client_go",
        importpath = "k8s.io/client-go",
        sum = "h1:nJZOfolnsVtDtbGJNCxzOtKUAu7zvXjB8+pMo9UNxZo=",
        version = "v0.20.6",
    )
    go_repository(
        name = "io_k8s_cloud_provider",
        importpath = "k8s.io/cloud-provider",
        sum = "h1:ELMIQwweSNu8gfVEnLDypxd9034S1sZJg6QcdWJOvMI=",
        version = "v0.17.4",
    )
    go_repository(
        name = "io_k8s_code_generator",
        importpath = "k8s.io/code-generator",
        sum = "h1:pTwl3rLB1fUyxmvEzmVPMM0tBSdUehd7z+bDzpj4lPE=",
        version = "v0.17.2",
    )
    go_repository(
        name = "io_k8s_component_base",
        importpath = "k8s.io/component-base",
        sum = "h1:G0inASS5vAqCpzs7M4Sp9dv9d0aElpz39zDHbSB4f4g=",
        version = "v0.20.6",
    )
    go_repository(
        name = "io_k8s_cri_api",
        importpath = "k8s.io/cri-api",
        sum = "h1:iXX0K2pRrbR8yXbZtDK/bSnmg/uSqIFiVJK1x4LUOMc=",
        version = "v0.20.6",
    )
    go_repository(
        name = "io_k8s_csi_translation_lib",
        importpath = "k8s.io/csi-translation-lib",
        sum = "h1:bP9yGfCJDknP7tklCwizZtwgJNRePMVcEaFIfeA11ho=",
        version = "v0.17.4",
    )
    go_repository(
        name = "io_k8s_gengo",
        importpath = "k8s.io/gengo",
        sum = "h1:sAvhNk5RRuc6FNYGqe7Ygz3PSo/2wGWbulskmzRX8Vs=",
        version = "v0.0.0-20200413195148-3a45101e95ac",
    )
    go_repository(
        name = "io_k8s_klog",
        importpath = "k8s.io/klog",
        sum = "h1:Pt+yjF5aB1xDSVbau4VsWe+dQNzA0qv1LlXdC2dF6Q8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "io_k8s_klog_v2",
        importpath = "k8s.io/klog/v2",
        sum = "h1:7+X0fUguPyrKEC4WjH8iGDg3laWgMo5tMnRTIGTTxGQ=",
        version = "v2.4.0",
    )
    go_repository(
        name = "io_k8s_kube_openapi",
        importpath = "k8s.io/kube-openapi",
        sum = "h1:sOHNzJIkytDF6qadMNKhhDRpc6ODik8lVC6nOur7B2c=",
        version = "v0.0.0-20201113171705-d219536bb9fd",
    )
    go_repository(
        name = "io_k8s_kubernetes",
        importpath = "k8s.io/kubernetes",
        sum = "h1:qTfB+u5M92k2fCCCVP2iuhgwwSOv1EkAkvQY1tQODD8=",
        version = "v1.13.0",
    )
    go_repository(
        name = "io_k8s_legacy_cloud_providers",
        importpath = "k8s.io/legacy-cloud-providers",
        sum = "h1:VvFqJGiYAr2gIdoNuqbeZLEdxIFeN4Yt6OLJS9l2oIE=",
        version = "v0.17.4",
    )
    go_repository(
        name = "io_k8s_sigs_apiserver_network_proxy_konnectivity_client",
        importpath = "sigs.k8s.io/apiserver-network-proxy/konnectivity-client",
        sum = "h1:4uqm9Mv+w2MmBYD+F4qf/v6tDFUdPOk29C095RbU5mY=",
        version = "v0.0.15",
    )
    go_repository(
        name = "io_k8s_sigs_structured_merge_diff",
        importpath = "sigs.k8s.io/structured-merge-diff",
        sum = "h1:zD2IemQ4LmOcAumeiyDWXKUI2SO0NYDe3H6QGvPOVgU=",
        version = "v1.0.1-0.20191108220359-b1b620dd3f06",
    )
    go_repository(
        name = "io_k8s_sigs_structured_merge_diff_v4",
        importpath = "sigs.k8s.io/structured-merge-diff/v4",
        sum = "h1:4oyYo8NREp49LBBhKxEqCulFjg26rawYKrnCmg+Sr6c=",
        version = "v4.0.3",
    )
    go_repository(
        name = "io_k8s_sigs_yaml",
        importpath = "sigs.k8s.io/yaml",
        sum = "h1:kr/MCeFWJWTwyaHoR9c8EjH9OumOmoF9YGiZd7lFm/Q=",
        version = "v1.2.0",
    )
    go_repository(
        name = "io_k8s_utils",
        importpath = "k8s.io/utils",
        sum = "h1:CbnUZsM497iRC5QMVkHwyl8s2tB3g7yaSHkYPkpgelw=",
        version = "v0.0.0-20201110183641-67b214c5f920",
    )
    go_repository(
        name = "io_opencensus_go",
        importpath = "go.opencensus.io",
        sum = "h1:gqCw0LfLxScz8irSi8exQc7fyQ0fKQU/qnC/X8+V/1M=",
        version = "v0.23.0",
    )
    go_repository(
        name = "io_opencensus_go_contrib_exporter_aws",
        importpath = "contrib.go.opencensus.io/exporter/aws",
        sum = "h1:YsbWYxDZkC7x2OxlsDEYvvEXZ3cBI3qBgUK5BqkZvRw=",
        version = "v0.0.0-20181029163544-2befc13012d0",
    )
    go_repository(
        name = "io_opencensus_go_contrib_exporter_ocagent",
        importpath = "contrib.go.opencensus.io/exporter/ocagent",
        sum = "h1:TKXjQSRS0/cCDrP7KvkgU6SmILtF/yV2TOs/02K/WZQ=",
        version = "v0.5.0",
    )
    go_repository(
        name = "io_opencensus_go_contrib_exporter_stackdriver",
        importpath = "contrib.go.opencensus.io/exporter/stackdriver",
        sum = "h1:Dll2uFfOVI3fa8UzsHyP6z0M6fEc9ZTAMo+Y3z282Xg=",
        version = "v0.12.1",
    )
    go_repository(
        name = "io_opencensus_go_contrib_integrations_ocsql",
        importpath = "contrib.go.opencensus.io/integrations/ocsql",
        sum = "h1:kfg5Yyy1nYUrqzyfW5XX+dzMASky8IJXhtHe0KTYNS4=",
        version = "v0.1.4",
    )
    go_repository(
        name = "io_opencensus_go_contrib_resource",
        importpath = "contrib.go.opencensus.io/resource",
        sum = "h1:4r2CANuYhKGmYWP02+5E94rLRcS/YeD+KlxSrOsMxk0=",
        version = "v0.1.1",
    )
    go_repository(
        name = "io_opentelemetry_go_proto_otlp",
        importpath = "go.opentelemetry.io/proto/otlp",
        sum = "h1:rwOQPCuKAKmwGKq2aVNnYIibI6wnV7EvzgfTCzcdGg8=",
        version = "v0.7.0",
    )
    go_repository(
        name = "io_rsc_binaryregexp",
        importpath = "rsc.io/binaryregexp",
        sum = "h1:HfqmD5MEmC0zvwBuF187nq9mdnXjXsSivRiXN7SmRkE=",
        version = "v0.2.0",
    )
    go_repository(
        name = "io_rsc_quote_v3",
        importpath = "rsc.io/quote/v3",
        sum = "h1:9JKUTTIUgS6kzR9mK1YuGKv6Nl+DijDNIc0ghT58FaY=",
        version = "v3.1.0",
    )
    go_repository(
        name = "io_rsc_sampler",
        importpath = "rsc.io/sampler",
        sum = "h1:7uVkIFmeBqHfdjD+gZwtXXI+RODJ2Wc4O7MPEh/QiW4=",
        version = "v1.3.0",
    )
    go_repository(
        name = "org_bazil_fuse",
        importpath = "bazil.org/fuse",
        sum = "h1:FNCRpXiquG1aoyqcIWVFmpTSKVcx2bQD38uZZeGtdlw=",
        version = "v0.0.0-20180421153158-65cc252bf669",
    )
    go_repository(
        name = "org_golang_google_api",
        importpath = "google.golang.org/api",
        sum = "h1:PhGymJMXfGBzc4lBRmrx9+1w4w2wEzURHNGF/sD/xGc=",
        version = "v0.62.0",
    )
    go_repository(
        name = "org_golang_google_appengine",
        importpath = "google.golang.org/appengine",
        sum = "h1:FZR1q0exgwxzPzp/aF+VccGrSfxfPpkBqjIIEq3ru6c=",
        version = "v1.6.7",
    )
    go_repository(
        name = "org_golang_google_cloud",
        importpath = "google.golang.org/cloud",
        sum = "h1:Cpp2P6TPjujNoC5M2KHY6g7wfyLYfIWRZaSdIKfDasA=",
        version = "v0.0.0-20151119220103-975617b05ea8",
    )
    go_repository(
        name = "org_golang_google_genproto",
        importpath = "google.golang.org/genproto",
        sum = "h1:I0YcKz0I7OAhddo7ya8kMnvprhcWM045PmkBdMO9zN0=",
        version = "v0.0.0-20211208223120-3a66f561d7aa",
    )
    go_repository(
        name = "org_golang_google_grpc",
        importpath = "google.golang.org/grpc",
        sum = "h1:Eeu7bZtDZ2DpRCsLhUlcrLnvYaMK1Gz86a+hMVvELmM=",
        version = "v1.43.0",
    )
    go_repository(
        name = "org_golang_google_grpc_cmd_protoc_gen_go_grpc",
        importpath = "google.golang.org/grpc/cmd/protoc-gen-go-grpc",
        sum = "h1:M1YKkFIboKNieVO5DLUEVzQfGwJD30Nv2jfUgzb5UcE=",
        version = "v1.1.0",
    )
    go_repository(
        name = "org_golang_google_protobuf",
        importpath = "google.golang.org/protobuf",
        sum = "h1:SnqbnDw1V7RiZcXPx5MEeqPv2s79L9i7BJUlG/+RurQ=",
        version = "v1.27.1",
    )
    go_repository(
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:QAqMVf3pSa6eeTsuklijukjXBlj7Es2QQplab+/RbQ4=",
        version = "v0.0.0-20211209193657-4570a0811e8b",
    )
    go_repository(
        name = "org_golang_x_exp",
        importpath = "golang.org/x/exp",
        sum = "h1:QE6XYQK6naiK1EPAe1g/ILLxN5RBoH5xkJk3CqlMI/Y=",
        version = "v0.0.0-20200224162631-6cc2880d07d6",
    )
    go_repository(
        name = "org_golang_x_image",
        importpath = "golang.org/x/image",
        sum = "h1:+qEpEAPhDZ1o0x3tHzZTQDArnOixOzGD9HUJfcg0mb4=",
        version = "v0.0.0-20190802002840-cff245a6509b",
    )
    go_repository(
        name = "org_golang_x_lint",
        importpath = "golang.org/x/lint",
        sum = "h1:VLliZ0d+/avPrXXH+OakdXhpJuEoBZuwh1m2j7U6Iug=",
        version = "v0.0.0-20210508222113-6edffad5e616",
    )
    go_repository(
        name = "org_golang_x_mobile",
        importpath = "golang.org/x/mobile",
        sum = "h1:4+4C/Iv2U4fMZBiMCc98MG1In4gJY5YRhtpDNeDeHWs=",
        version = "v0.0.0-20190719004257-d2bd2a29d028",
    )
    go_repository(
        name = "org_golang_x_mod",
        importpath = "golang.org/x/mod",
        sum = "h1:UG21uOlmZabA4fW5i7ZX6bjw1xELEGg/ZLgZq9auk/Q=",
        version = "v0.5.0",
    )
    go_repository(
        name = "org_golang_x_net",
        importpath = "golang.org/x/net",
        sum = "h1:hEYJvxw1lSnWIl8X9ofsYMklzaDs90JI2az5YMd4fPM=",
        version = "v0.0.0-20211216030914-fe4d6282115f",
    )
    go_repository(
        name = "org_golang_x_oauth2",
        importpath = "golang.org/x/oauth2",
        sum = "h1:RerP+noqYHUQ8CMRcPlC2nvTa4dcBIjegkuWdcUDuqg=",
        version = "v0.0.0-20211104180415-d3ed0bb246c8",
    )
    go_repository(
        name = "org_golang_x_sync",
        importpath = "golang.org/x/sync",
        sum = "h1:5KslGYwFpkhGh+Q16bwMP3cOontH8FOep7tGV86Y7SQ=",
        version = "v0.0.0-20210220032951-036812b2e83c",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:FjkYO/PPp4Wi0EAUOVLxePm7qVW4r4ctbWpURyuOD0E=",
        version = "v0.0.0-20211205182925-97ca703d548d",
    )
    go_repository(
        name = "org_golang_x_term",
        importpath = "golang.org/x/term",
        sum = "h1:JGgROgKl9N8DuW20oFS5gxc+lE67/N3FcwmBPMe7ArY=",
        version = "v0.0.0-20210927222741-03fcf44c2211",
    )
    go_repository(
        name = "org_golang_x_text",
        importpath = "golang.org/x/text",
        sum = "h1:olpwvP2KacW1ZWvsR7uQhoyTYvKAupfQrRGBFM352Gk=",
        version = "v0.3.7",
    )
    go_repository(
        name = "org_golang_x_time",
        importpath = "golang.org/x/time",
        sum = "h1:EHBhcS0mlXEAVwNyO2dLfjToGsyY4j24pTs2ScHnX7s=",
        version = "v0.0.0-20200630173020-3af7569d3a1e",
    )
    go_repository(
        name = "org_golang_x_tools",
        importpath = "golang.org/x/tools",
        sum = "h1:ouewzE6p+/VEB31YYnTbEJdi8pFqKp4P4n85vwo3DHA=",
        version = "v0.1.5",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        importpath = "golang.org/x/xerrors",
        sum = "h1:go1bK/D/BFZV2I8cIQd1NKEZ+0owSTG1fDTci4IqFcE=",
        version = "v0.0.0-20200804184101-5ec99f83aff1",
    )
    go_repository(
        name = "org_gonum_v1_gonum",
        importpath = "gonum.org/v1/gonum",
        sum = "h1:OB/uP/Puiu5vS5QMRPrXCDWUPb+kt8f1KW8oQzFejQw=",
        version = "v0.0.0-20190331200053-3d26580ed485",
    )
    go_repository(
        name = "org_gonum_v1_netlib",
        importpath = "gonum.org/v1/netlib",
        sum = "h1:jRyg0XfpwWlhEV8mDfdNGBeSJM2fuyh9Yjrnd8kF2Ts=",
        version = "v0.0.0-20190331212654-76723241ea4e",
    )
    go_repository(
        name = "org_modernc_cc",
        importpath = "modernc.org/cc",
        sum = "h1:nPibNuDEx6tvYrUAtvDTTw98rx5juGsa5zuDnKwEEQQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_golex",
        importpath = "modernc.org/golex",
        sum = "h1:wWpDlbK8ejRfSyi0frMyhilD3JBvtcx2AdGDnU+JtsE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_mathutil",
        importpath = "modernc.org/mathutil",
        sum = "h1:93vKjrJopTPrtTNpZ8XIovER7iCIH1QU7wNbOQXC60I=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_strutil",
        importpath = "modernc.org/strutil",
        sum = "h1:XVFtQwFVwc02Wk+0L/Z/zDDXO81r5Lhe6iMKmGX3KhE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_xc",
        importpath = "modernc.org/xc",
        sum = "h1:7ccXrupWZIS3twbUGrtKmHS2DXY6xegFua+6O3xgAFU=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_mozilla_go_pkcs7",
        importpath = "go.mozilla.org/pkcs7",
        sum = "h1:A/5uWzF44DlIgdm/PQFwfMkW0JX+cIcQi/SwLAmZP5M=",
        version = "v0.0.0-20200128120323-432b2356ecb1",
    )
    go_repository(
        name = "org_uber_go_atomic",
        importpath = "go.uber.org/atomic",
        sum = "h1:ADUqmZGgLDDfbSL9ZmPxKTybcoEYHgpYfELNoN+7hsw=",
        version = "v1.7.0",
    )
    go_repository(
        name = "org_uber_go_multierr",
        importpath = "go.uber.org/multierr",
        sum = "h1:y6IPFStTAIT5Ytl7/XYmHvzXQ7S3g/IeZW9hyZ5thw4=",
        version = "v1.6.0",
    )
    go_repository(
        name = "org_uber_go_zap",
        importpath = "go.uber.org/zap",
        sum = "h1:MTjgFu6ZLKvY6Pvaqk97GlxNBuMpV4Hy/3P6tRGlI2U=",
        version = "v1.17.0",
    )
    go_repository(
        name = "tools_gotest",
        importpath = "gotest.tools",
        sum = "h1:VsBPFP1AI068pPrMxtb/S8Zkgf9xEmTLJjfM+P5UIEo=",
        version = "v2.2.0+incompatible",
    )
    go_repository(
        name = "tools_gotest_v3",
        importpath = "gotest.tools/v3",
        sum = "h1:4AuOwCGf4lLR9u3YOe2awrHygurzhO/HeQ6laiA6Sx0=",
        version = "v3.0.3",
    )
