load(
    "@rules_apple//apple:ios.bzl",
    "ios_application",
)

load(
    "@rules_swift//swift:swift.bzl",
    "swift_library",
)

swift_library(
    name = "lib",
    srcs = glob(["SwiftUISampleProj/*.swift"]),
    visibility = ["//visibility:private"],
    module_name = "SwiftUISampleProj",
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
    visibility = ["//visibility:public"],
    deps = [":lib"],
)