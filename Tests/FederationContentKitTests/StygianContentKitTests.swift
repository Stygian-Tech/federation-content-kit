import RssFeedKit
import Testing

@Suite struct FederationContentKitTests {
  @Test func rssFeedKitVersion() { #expect(RssFeedKitVersion.current == 1) }
}
