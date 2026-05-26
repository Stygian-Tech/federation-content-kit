import RssFeedKit
import Testing

@Suite struct StygianContentKitTests {
  @Test func rssFeedKitVersion() { #expect(RssFeedKitVersion.current == 1) }
}
