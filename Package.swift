// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "federation-content-kit",
  platforms: [.macOS(.v14)],
  products: [
    .library(name: "RssFeedKit", targets: ["RssFeedKit"]),
    .library(name: "JetstreamFirehoseKit", targets: ["JetstreamFirehoseKit"]),
    .library(name: "StandardSiteRenderKit", targets: ["StandardSiteRenderKit"]),
    .library(name: "PublicResourceURLKit", targets: ["PublicResourceURLKit"]),
  ],
  dependencies: [.package(path: "../atproto-primitives")],
  targets: [
    .target(name: "RssFeedKit", dependencies: [.product(name: "AtprotoPrimitives", package: "atproto-primitives")], path: "Sources/RssFeedKit"),
    .target(name: "JetstreamFirehoseKit", dependencies: [.product(name: "AtprotoPrimitives", package: "atproto-primitives")], path: "Sources/JetstreamFirehoseKit"),
    .target(name: "StandardSiteRenderKit", dependencies: [.product(name: "AtprotoPrimitives", package: "atproto-primitives")], path: "Sources/StandardSiteRenderKit"),
    .target(name: "PublicResourceURLKit", dependencies: [.product(name: "AtprotoPrimitives", package: "atproto-primitives")], path: "Sources/PublicResourceURLKit"),
    .testTarget(name: "FederationContentKitTests", dependencies: ["RssFeedKit", "JetstreamFirehoseKit", "StandardSiteRenderKit", "PublicResourceURLKit"], path: "Tests/StygianContentKitTests"),
  ]
)
