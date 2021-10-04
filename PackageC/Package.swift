// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PackageC",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "FrameworkC",
      targets: ["FrameworkC"]),
    .library(
      name: "AlamofireCBinary_5_4_4",
      targets: ["AlamofiretXCFramework_5_4_4"])
  ],
  dependencies: [
    .package(name: "PackageD", path: "../PackageD")
  ],
  targets: [
    .target(
      name: "FrameworkC",
      dependencies: [
        .product(name: "FrameworkDBinary_2_0", package: "PackageD")
      ]
    ),
    .target(
      name: "AlamofireC"
    ),
    .binaryTarget(
      name: "AlamofiretXCFramework_5_4_4",
      path: "Products/xcframeworks/Alamofire.xcframework"),
    .testTarget(
      name: "PackageCTests",
      dependencies: ["AlamofireC"])
  ]
)
