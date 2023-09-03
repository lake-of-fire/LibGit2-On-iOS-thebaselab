// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "Clibgit2",
	platforms: [.iOS(.v13)],
	products: [
		.library(
			name: "Clibgit2",
			targets: [ "Clibgit2" ]
		),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "Clibgit2",
			url: "https://github.com/thebaselab/LibGit2-On-iOS/releases/download/v1.3.1-p2/Clibgit2.xcframework.zip",
			checksum: "a884105f9be9b56d867236c1919772e9ec2d2b786b96c5d91c5beeac08ed7b2d"
		),
	]
)
