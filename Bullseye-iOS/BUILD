load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "lib",
    srcs = glob(["Bullseye/Sources/*.swift"]),
    visibility = ["//visibility:private"]
)

ios_application(
    name = "bullseye",
    bundle_id = "com.example.bullseye",
    families = [
        "iphone",
    ],
    infoplists = ["Bullseye/App/Info.plist"],
    resources = glob(["Bullseye/App/Assets.xcassets/**"]),
    minimum_os_version = "15.0",
    visibility = ["//visibility:public"],
    deps = [":lib"],
)