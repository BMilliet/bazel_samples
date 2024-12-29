podproj:
	cd PodSampleProj && pod install
	bazel build //PodSampleProj:PodSampleProj

podproj_xcode:
	cd PodSampleProj && pod install
	bazel run //PodSampleProj:xcodeproj

bullseye_test:
	bazel test //Bullseye-iOS:Tests

bullseye_build:
	bazel build //Bullseye-iOS:BullseyeApp

bullseye_xcode:
	bazel run //Bullseye-iOS:xcodeproj

swiftuiproj:
	bazel build //SwiftUISampleProj:SwiftUISampleProj

swiftuiproj_xcode:
	bazel run //SwiftUISampleProj:xcodeproj
