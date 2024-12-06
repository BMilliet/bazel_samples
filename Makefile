
podproj_run:
	cd PodSampleProj && pod install
	bazel run //PodSampleProj:PodSampleProj

podproj:
	cd PodSampleProj && pod install
	bazel build //PodSampleProj:PodSampleProj

bullseye_test:
	bazel test //Bullseye-iOS:ios-tests

bullseye_build:
	bazel build //Bullseye-iOS:ios-tests

swiftuiproj:
	bazel build //SwiftUISampleProj:SwiftUISampleProj