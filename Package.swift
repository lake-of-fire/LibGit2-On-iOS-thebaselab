// swift-tools-version:5.9

import PackageDescription

let package = Package(
	name: "Clibgit2",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
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
			url: "https://github.com/lake-of-fire/LibGit2-On-iOS-thebaselab/releases/download/1.3.1b/Clibgit2.xcframework.zip",
			checksum: "ab2a2a7e4d353818c8c8610f68ee437f3f2c873c99be7bc13e323d8f116347c3"
		),
	]
)
