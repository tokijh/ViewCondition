// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "ViewCondition",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6)
  ],
  products: [
    .library(name: "ViewCondition", targets: ["ViewCondition"]),
  ],
  targets: [
    .target(name: "ViewCondition"),
  ]
)
