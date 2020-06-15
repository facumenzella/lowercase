// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "lowercase",
    products: [.executable(name: "lowercase", targets: ["lowercase"])],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "lowercase",
            dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")],
            path: "lowercase/"
        )
    ]
)
