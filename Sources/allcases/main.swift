public enum MyEnum: String, CaseIterable {
    case one, two
}

public struct MyStruct: Hashable {
    public let myValue: String = "defaultValue"

    public init() {}
}

print(123)
