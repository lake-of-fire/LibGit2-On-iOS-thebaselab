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
			checksum: "0f3be25e42facc549828dc0283554516d2b9fb6b10ef132a7aba82d12e877a63"
		),
	]
)
