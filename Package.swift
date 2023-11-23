// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CosyncAuthSwift",
    platforms: [
            .macOS(.v10_15), .iOS("15.0"), .tvOS(.v13)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CosyncAuthSwift",
            targets: ["CosyncAuthSwift"]),
        .library(
            name: "CosyncGoogleAuth",
            targets: ["CosyncGoogleAuth"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/google/GoogleSignIn-iOS",
            from: "7.0.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CosyncAuthSwift",
            dependencies: []),
        .target(
            name: "CosyncGoogleAuth",
            dependencies: [.product(name: "GoogleSignInSwift", package: "googlesignin-ios")],
            path: "Sources/CosyncSocialAuth"),
        .testTarget(
            name: "CosyncAuthSwiftTests",
            dependencies: ["CosyncAuthSwift"]),
    ]
)
