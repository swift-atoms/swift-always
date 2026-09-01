import Always
import Testing

@Suite
struct `Always Tests` {

    @Test
    func `stores its value`() {
        let always = Always(42)

        #expect(always.value == 42)
    }

    @Test
    func `stores Void`() {
        let always = Always(())

        _ = always.value
    }
}
