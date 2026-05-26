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
  dependencies: [.package(url: "https://github.com/Stygian-Tech/atproto-primitive-kit.git", revision: "1105fb3c008a1048c40b9d1b71cc2cc8e51319b0")],
  targets: [
    .target(name: "RssFeedKit", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/RssFeedKit"),
    .target(name: "JetstreamFirehoseKit", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/JetstreamFirehoseKit"),
    .target(name: "StandardSiteRenderKit", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/StandardSiteRenderKit"),
    .target(name: "PublicResourceURLKit", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/PublicResourceURLKit"),
    .testTarget(name: "FederationContentKitTests", dependencies: ["RssFeedKit", "JetstreamFirehoseKit", "StandardSiteRenderKit", "PublicResourceURLKit"], path: "Tests/FederationContentKitTests"),
  ]
)
