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
	dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", .upToNextMinor(from: "3.1.3000")),
    ],
	targets: [
        .binaryTarget(name: "Clibgit2", path: "Clibgit2.xcframework"),
        .target(name: "LinkerConfigurator", dependencies: [
            "OpenSSL",
        ], linkerSettings: [
            .linkedLibrary("z"),
            .linkedLibrary("iconv"),
            .linkedFramework("CoreFoundation"),
        ])
	]
)
