// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PackageB",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "FrameworkB",
      targets: ["FrameworkB"]),
    .library(
      name: "AlamofireBBinary_5_4_0",
      targets: ["AlamofiretXCFramework_5_4_0"])
  ],
  dependencies: [
    .package(name: "PackageD", path: "../PackageD")
  ],
  targets: [
    .target(
      name: "FrameworkB",
      dependencies: [
        .product(name: "FrameworkDBinary_1_0", package: "PackageD")
      ]
    ),
    .target(
      name: "AlamofireB"
    ),
    .binaryTarget(
      name: "AlamofiretXCFramework_5_4_0",
      path: "Products/xcframeworks/Alamofire.xcframework"),
    .testTarget(
      name: "PackageBTests",
      dependencies: ["AlamofireB"])
  ]
)
