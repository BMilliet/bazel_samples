load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application"
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
    name = "app.lib",
    srcs = glob(["SwiftUISampleProj/*.swift"]),
    data = [":PreviewContent"],
    visibility = ["//visibility:private"],
    module_name = "app",
)

filegroup(
    name = "PreviewContent",
    srcs = glob(["SwiftUISampleProj/PreviewContent/**"]),
)

ios_application(
    name = "SwiftUISampleProj",
    bundle_id = "com.example.SwiftUISampleProj",
    families = [
        "iphone",
    ],
    infoplists = ["SwiftUISampleProj/Info.plist"],
    resources = glob([
        "SwiftUISampleProj/Assets.xcassets/**",
    ]),
    minimum_os_version = "16.0",
    executable_name = "SwiftUISampleProj",
    visibility = ["//visibility:public"],
    deps = [":app.lib"],
)

xcodeproj(
    name = "xcodeproj",
    project_name = "SwiftUISampleProj",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(":SwiftUISampleProj", target_environments = ["simulator"])
    ],
)
