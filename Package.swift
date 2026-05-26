// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "stygian-content-kit",
  platforms: [.macOS(.v14)],
  products: [
    .library(name: "RssFeedKit", targets: ["RssFeedKit"]),
    .library(name: "JetstreamFirehoseKit", targets: ["JetstreamFirehoseKit"]),
    .library(name: "StandardSiteRenderKit", targets: ["StandardSiteRenderKit"]),
    .library(name: "PublicResourceURLKit", targets: ["PublicResourceURLKit"]),
  ],
  dependencies: [.package(path: "../stygian-core")],
  targets: [
    .target(name: "RssFeedKit", dependencies: [.product(name: "StygianCore", package: "stygian-core")], path: "Sources/RssFeedKit"),
    .target(name: "JetstreamFirehoseKit", dependencies: [.product(name: "StygianCore", package: "stygian-core")], path: "Sources/JetstreamFirehoseKit"),
    .target(name: "StandardSiteRenderKit", dependencies: [.product(name: "StygianCore", package: "stygian-core")], path: "Sources/StandardSiteRenderKit"),
    .target(name: "PublicResourceURLKit", dependencies: [.product(name: "StygianCore", package: "stygian-core")], path: "Sources/PublicResourceURLKit"),
    .testTarget(name: "StygianContentKitTests", dependencies: ["RssFeedKit", "JetstreamFirehoseKit", "StandardSiteRenderKit", "PublicResourceURLKit"], path: "Tests/StygianContentKitTests"),
  ]
)
