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
            exclude: [
                "CryptoSwift/Info.plist"
            ],
            linkerSettings: [
                            .unsafeFlags([ "-Xlinker","-soname=libCryptoSwift.so"],.when(platforms: [.android])),
                             ]
),
//    .testTarget(name: "CryptoSwiftTests", dependencies: ["CryptoSwift"]),
//    .testTarget(name: "TestsPerformance", dependencies: ["CryptoSwift"])
  ],
  swiftLanguageVersions: [.v5]
)
//
///Users/johnburkey/Projects/Brighten2020/CryptoSwift/Sources/CryptoSwift/Info.plist
//
//error: found 2 file(s) which are unhandled; explicitly declare them as resources or exclude from the target
// Tests/CryptoSwiftTests/Info.plist
// Tests/CryptoSwiftTests/Default-568h@2x.png
//
//error: found 1 file(s) which are unhandled; explicitly declare them as resources or exclude from the target
// Tests/TestsPerformance/Info.plist
