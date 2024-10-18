// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CZWeatherKit",
    platforms: [
        .iOS(.v10), // Adjust this based on your target platforms
        .tvOS(.v10),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "CZWeatherKit",
            targets: ["CZWeatherKit"]),
    ],
    dependencies: [
        // Add dependencies here, if needed
    ],
    targets: [
        .target(
            name: "CZWeatherKit",
            path: "CZWeatherKit", // Adjust this based on the location of your source files
            exclude: ["Tests"],  // Exclude any unnecessary files
            resources: [
                // Define any resources if needed
            ]
        ),
        .testTarget(
            name: "CZWeatherKitTests",
            dependencies: ["CZWeatherKit"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
