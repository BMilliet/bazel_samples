
podproj_run:
	bazel run //PodSampleProj:PodSampleProj

podproj:
	bazel build //PodSampleProj:PodSampleProj

bullseye_test:
	bazel test //Bullseye-iOS:ios-tests

bullseye_build:
	bazel build //Bullseye-iOS:ios-tests