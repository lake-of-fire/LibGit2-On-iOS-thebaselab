// swift-tools-version:5.9

import PackageDescription

let package = Package(
	name: "Clibgit2",
    platforms: [.iOS(.v15), .macOS(.v12)],
	products: [
		.library(
			name: "Clibgit2",
			targets: [ "Clibgit2", "LinkerConfigurator" ]
		),
	],
	dependencies: [],
	targets: [
        .binaryTarget(name: "Clibgit2", path: "Clibgit2.xcframework"),
        .target(name: "LinkerConfigurator", linkerSettings: [
            .linkedLibrary("z"),
            .linkedLibrary("iconv")
        ])
	]
)
