# swift-always

Use this package when you need a named carrier for a constant value, one that other packages extend with behaviour that ignores its input and yields that value (swift-parser's parser that consumes nothing, for example). Start from `Always<Value>`. To wrap a single value as a container, including a noncopyable or nonescapable one, use the swift-single package instead.
