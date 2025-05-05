// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let datadogDependencies: [Target.Dependency] = [
    .product(name: "DatadogCore", package: "dd-sdk-ios"),
    .product(name: "DatadogLogs", package: "dd-sdk-ios"),
    .product(name: "DatadogTrace", package: "dd-sdk-ios"),
    .product(name: "DatadogRUM", package: "dd-sdk-ios"),
]

let package = Package(
    name: "DatadogProxy",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "DatadogProxy", targets: ["DatadogProxy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/DataDog/dd-sdk-ios", from: "2.0.0"),
    ],
    targets: [
        .target(name: "DatadogProxy",
                dependencies: [
                ] + datadogDependencies),
        .testTarget(name: "DatadogProxyTests",
                    dependencies: [
                        "DatadogProxy",
                    ])
    ]
)

