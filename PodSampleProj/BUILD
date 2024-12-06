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
    srcs = glob(["PodSampleProj/*.swift"]),
    visibility = ["//visibility:private"],
    module_name = "PodSampleProj",
    deps = [":alamofire"]
)

# create lib for the added pod
swift_library(
    name = "alamofire",
    srcs = glob(["Pods/Alamofire/Source/**/*.swift"]),
    visibility = ["//visibility:private"],
    module_name = "Alamofire",
)

ios_application(
    name = "PodSampleProj",
    bundle_id = "com.example.podsampleproj",
    families = [
        "iphone",
    ],
    infoplists = ["PodSampleProj/Info.plist"],
    resources = glob([
        "PodSampleProj/Assets.xcassets/**",
        "PodSampleProj/Base.lproj/**"
        ]),
    minimum_os_version = "16.0",
    visibility = ["//visibility:public"],
    deps = [":lib"],
)