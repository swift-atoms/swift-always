public struct Always<Value> {

    public let value: Value

    @inlinable
    public init(_ value: Value) {
        self.value = value
    }
}

extension Always: Swift.Sendable where Value: Swift.Sendable {}
