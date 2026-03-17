import Testing
@testable import CodexBar

@Suite
struct ProviderStatusTextTests {
    @Test
    func localizedDescription_mapsPartiallyDegradedServiceToSharedLabel() {
        #expect(ProviderStatusText.localizedDescription("Partially Degraded Service") == "Partially Degraded")
    }

    @Test
    func localizedDescription_preservesUnknownStatusText() {
        #expect(
            ProviderStatusText.localizedDescription("Investigating elevated latency") ==
                "Investigating elevated latency")
    }
}
