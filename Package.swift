// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwinjectPropertyWrapper",
    products: [
        .library(
            name: "SwinjectPropertyWrapper",
            targets: ["SwinjectPropertyWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject", from: "2.7.1")
    ],
    targets: [
        .target(
            name: "SwinjectPropertyWrapper",
            dependencies: ["Swinject"]),
    ]
)
