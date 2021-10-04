// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "PackageA",
  platforms: [.iOS(.v11)],
  products: [
    .library(name: "NetworkLayer",targets: ["NetworkLayer"]),
    .library(name: "FrameworkA_With_B_Then_C", targets: ["FrameworkA_With_B_Then_C"]),
    .library(name: "FrameworkA_With_C_Then_B", targets: ["FrameworkA_With_C_Then_B"])
  ],
  dependencies: [
    .package(name: "PackageB", path: "../PackageB"),
    .package(name: "PackageC", path: "../PackageC")
  ],
  targets: [
    .target(
      name: "FrameworkA_With_B_Then_C",
      dependencies: [
        .product(name: "FrameworkB", package: "PackageB"),
        .product(name: "FrameworkC", package: "PackageC")
      ]
    ),
    .target(
      name: "FrameworkA_With_C_Then_B",
      dependencies: [
        .product(name: "FrameworkC", package: "PackageC"),
        .product(name: "FrameworkB", package: "PackageB")
      ]
    ),
    .target(
      name: "NetworkLayer",
      dependencies: [
        .product(name: "AlamofireBBinary_5_4_0", package: "PackageB"),
        .product(name: "AlamofireCBinary_5_4_4", package: "PackageC"),
      ]
    ),
    .testTarget(
      name: "PackageATests",
      dependencies: ["FrameworkA_With_B_Then_C", "FrameworkA_With_C_Then_B"]),
  ]
)
