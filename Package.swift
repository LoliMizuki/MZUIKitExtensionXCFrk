// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MZUIKitExtensionXCFrk",
    
    platforms: [.iOS(.v16)],
    
    products: [
        .library(
            name: "MZUIKitExtensionXCFrk",
            targets: ["MZUIKitExtension", "MZSwiftsWrapper"]
        )
    ],
    
    dependencies: [
        .package(
            url: "https://github.com/LoliMizuki/MZSwiftsXCFrk",
            from: "1.4.0"
        )
    ],
    
    targets: [
        .target(
            name: "MZSwiftsWrapper",
            dependencies: [
                .product(name: "MZSwifts", package: "MZSwiftsXCFrk")
            ]
        ),

        .binaryTarget(
            name: "MZUIKitExtension",
            path: "MZUIKitExtension.xcframework"
        )
    ],
    
    swiftLanguageModes: [.v5]
)
