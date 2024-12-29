load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application",
    "ios_unit_test"
)

load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library"
)

load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

swift_library(
    name = "tests.lib",
    srcs = glob(["BullseyeTests/*.swift"]),
    visibility = ["//visibility:private"],
    deps = [":app.lib"],
    module_name = "BullseyeTests",
    testonly = True
)

swift_library(
    name = "app.lib",
    srcs = glob(["Bullseye/Sources/*.swift"]),
    visibility = ["//visibility:private"],
    module_name = "Bullseye"
)

ios_unit_test(
    name = "Tests",
    deps = [":tests.lib"],
    minimum_os_version = "15.0",
    infoplists = ["BullseyeTests/App/Info.plist"],
    test_host = ":BullseyeApp",
    platform_type = "ios",
    visibility = ["//visibility:public"],
)

ios_application(
    name = "BullseyeApp",
    bundle_id = "com.example.bullseye",
    families = [
        "iphone",
    ],
    infoplists = ["Bullseye/App/Info.plist"],
    resources = glob(["Bullseye/App/Assets.xcassets/**"]),
    minimum_os_version = "15.0",
    visibility = ["//visibility:public"],
    deps = [":app.lib"],
)

xcodeproj(
    name = "xcodeproj",
    project_name = "App",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(
            ":BullseyeApp",
            target_environments = ["simulator"]
        ),
        ":Tests"
    ],
)
