// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CZWeatherKit",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "CZWeatherKit",
            targets: ["CZWeatherKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINCache.git", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "CZWeatherKit",
            dependencies: [
                .product(name: "PINCache", package: "PINCache")
            ],
            path: "CZWeatherKit",
            publicHeadersPath: ".",
            sources: ["CZWeatherKit"],
            exclude: ["Tests"] // If needed, adjust based on folder structure
        ),
        .testTarget(
            name: "CZWeatherKitTests",
            dependencies: ["CZWeatherKit"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
