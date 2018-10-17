// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kitura-HelloWorld-iOS",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.5.0")),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", .upToNextMinor(from: "1.7.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Kitura-HelloWorld-iOS",
            dependencies: [
              "Kitura" , "HeliumLogger"
            ]),
        .testTarget(
            name: "Kitura-HelloWorld-iOSTests",
            dependencies: ["Kitura-HelloWorld-iOS"]),
    ]
)
