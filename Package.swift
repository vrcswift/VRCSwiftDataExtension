// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "VRCSwiftDataExtension",
    products: [
        .library(
            name: "VRCSwiftDataExtension",
            targets: ["VRCSwiftDataExtension"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "VRCSwiftDataExtension",
            dependencies: []),
        .testTarget(
            name: "VRCSwiftDataExtensionTests",
            dependencies: ["VRCSwiftDataExtension"]),
    ]
)
