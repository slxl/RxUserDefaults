// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "RxUserDefaults",
  platforms: [
    .iOS(.v10), .tvOS(.v10)
  ],
  products: [
    .library(name: "RxUserDefaults", targets: ["RxUserDefaults"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
  ],
  targets: [
    .target(name: "RxUserDefaults_iOS", dependencies: ["RxSwift", "RxCocoa"]),
    .target(name: "RxUserDefaults_tvOS", dependencies: ["RxSwift", "RxCocoa"]),
    .testTarget(name: "RxUserDefaults-Tests_iOS", dependencies: ["RxUserDefaults_iOS"]),
    .testTarget(name: "RxUserDefaults-Tests_tvOS", dependencies: ["RxUserDefaults_tvOS"])
  ],
  swiftLanguageVersions: [.v5]
)
