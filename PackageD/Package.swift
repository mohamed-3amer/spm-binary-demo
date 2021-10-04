// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PackageD",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "FrameworkDSourceCode",
      targets: ["FrameworkD"]),
    .library(
      name: "FrameworkDBinary_1_0",
      targets: ["FrameworkDXCFramework_1_0"]),
    .library(
      name: "FrameworkDBinary_2_0",
      targets: ["FrameworkDXCFramework_2_0"])
  ],
  dependencies: [],
  targets: [
    .target(name: "FrameworkD"),
    .binaryTarget(
      name: "FrameworkDXCFramework_1_0",
      path: "Products/xcframeworks/FrameworkD_1_0.xcframework"),
    .binaryTarget(
      name: "FrameworkDXCFramework_2_0",
      path: "Products/xcframeworks/FrameworkD_2_0.xcframework"),
    .testTarget(
      name: "PackageDTests",
      dependencies: ["FrameworkD"]),
  ]
)
