import Always
import Testing

@Suite
struct `Always preserves its stored value` {

    @Test
    func `Always stores its value`() {
        let always = Always(42)

        #expect(always.value == 42)
    }

    @Test
    func `Always stores a Void value`() {
        let always = Always(())

        _ = always.value
    }
}
