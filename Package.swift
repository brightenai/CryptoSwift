// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "CryptoSwift",
  platforms: [
    .macOS(.v10_10), .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(
      name: "CryptoSwift",
        type: .dynamic,
      targets: ["CryptoSwift"]
    )
  ],
  targets: [
    .target(name: "CryptoSwift",
            linkerSettings: [
                            .unsafeFlags([ "-Xlinker","-soname=libCryptoSwift.so"],.when(platforms: [.android])),
                             ]
),
    .testTarget(name: "CryptoSwiftTests", dependencies: ["CryptoSwift"]),
    .testTarget(name: "TestsPerformance", dependencies: ["CryptoSwift"])
  ],
  swiftLanguageVersions: [.v5]
)
