// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxUserDefaults",
    platforms: [
      .iOS(.v10), .tvOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "RxUserDefaults",
            targets: ["RxUserDefaults"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "RxUserDefaults",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "Sources"
        ),
        .testTarget(
            name: "RxUserDefaultsTests",
            dependencies: ["RxUserDefaults", "RxTest", "RxBlocking"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
