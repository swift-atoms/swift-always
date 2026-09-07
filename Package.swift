// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-always",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Always", targets: ["Always"]),
        .library(name: "Always Standard Library Integration", targets: ["Always Standard Library Integration"]),
        .library(name: "Always Foundation Library Integration", targets: ["Always Foundation Library Integration"]),
        .library(name: "Always Test Support", targets: ["Always Test Support"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Always",
            dependencies: [
            ],
            path: "Sources/Always"
        ),
        .target(
            name: "Always Standard Library Integration",
            dependencies: [
                .target(name: "Always"),
            ],
            path: "Sources/Always Standard Library Integration"
        ),
        .target(
            name: "Always Foundation Library Integration",
            dependencies: [
                .target(name: "Always"),
                .target(name: "Always Standard Library Integration"),
            ],
            path: "Sources/Always Foundation Library Integration"
        ),
        .target(
            name: "Always Test Support",
            dependencies: [
                .target(name: "Always"),
            ],
            path: "Tests/Support"
        ),
        .testTarget(
            name: "Always Tests",
            dependencies: [
                .target(name: "Always"),
                .target(name: "Always Test Support"),
                .target(name: "Always Standard Library Integration"),
                .target(name: "Always Foundation Library Integration"),
            ],
            path: "Tests/Always Tests"
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets {
    target.swiftSettings = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
    ]
}
