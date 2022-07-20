// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MZUIKitExtensionXCFrk",
    
    platforms: [.iOS(.v14)],
    
    products: [
        .library(
            name: "MZUIKitExtensionXCFrk",
            targets: ["MZSwifts", "MZUIKitExtension"]),
    ],
    
    targets: [
        .binaryTarget(
            name: "MZSwifts",
            path: "MZSwifts.xcframework"
        ),
        .binaryTarget(
            name: "MZUIKitExtension",
            path: "MZUIKitExtension.xcframework"
        )
    ],
    
    swiftLanguageVersions: [.v5]
)
