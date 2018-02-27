
public enum AnyEnum2<T0, T1> {
    case case0(T0)
    case case1(T1)

    public init<E: Enum2Convertible>(_ source: E)
        where T0 == E.T0
        , T1 == E.T1
    {
        self = source.asEnum
    }
}

public protocol Enum2Convertible {
    associatedtype T0
    associatedtype T1
    var asEnum: AnyEnum2<T0, T1> { get }
}

extension AnyEnum2: Enum2Convertible {
    public var asEnum: AnyEnum2 {
        return self
    }
}

extension Enum2Convertible
    where T0 == T1
{
    public func unwrapped() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
        }
    }
}

extension Enum2Convertible {
    public func map0<T>(_ f: (T0) throws -> T) rethrows -> AnyEnum2<T, T1> {
        switch self.asEnum {
        case .case0(let x): return try .case0(f(x))
        case .case1(let x): return .case1(x)
        }
    }

    public func map1<T>(_ f: (T1) throws -> T) rethrows -> AnyEnum2<T0, T> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return try .case1(f(x))
        }
    }

}

extension Enum2Convertible where Self: Equatable
    , T0: Equatable
    , T1: Equatable
{
    public static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs.asEnum, rhs.asEnum) {
        case (.case0(let lhsv), .case0(let rhsv)):
            return lhsv == rhsv
        case (.case1(let lhsv), .case1(let rhsv)):
            return lhsv == rhsv
        default:
            return false
        }
    }
}

#if swift(>=4.1)

extension AnyEnum2: Equatable
    where T0: Equatable
    , T1: Equatable
{}

#endif

public enum AnyEnum3<T0, T1, T2> {
    case case0(T0)
    case case1(T1)
    case case2(T2)

    public init<E: Enum3Convertible>(_ source: E)
        where T0 == E.T0
        , T1 == E.T1
        , T2 == E.T2
    {
        self = source.asEnum
    }
}

public protocol Enum3Convertible {
    associatedtype T0
    associatedtype T1
    associatedtype T2
    var asEnum: AnyEnum3<T0, T1, T2> { get }
}

extension AnyEnum3: Enum3Convertible {
    public var asEnum: AnyEnum3 {
        return self
    }
}

extension Enum3Convertible
    where T0 == T1
    , T0 == T2
{
    public func unwrapped() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
            case .case2(let x): return x
        }
    }
}

extension Enum3Convertible {
    public func map0<T>(_ f: (T0) throws -> T) rethrows -> AnyEnum3<T, T1, T2> {
        switch self.asEnum {
        case .case0(let x): return try .case0(f(x))
        case .case1(let x): return .case1(x)
        case .case2(let x): return .case2(x)
        }
    }

    public func map1<T>(_ f: (T1) throws -> T) rethrows -> AnyEnum3<T0, T, T2> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return try .case1(f(x))
        case .case2(let x): return .case2(x)
        }
    }

    public func map2<T>(_ f: (T2) throws -> T) rethrows -> AnyEnum3<T0, T1, T> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return .case1(x)
        case .case2(let x): return try .case2(f(x))
        }
    }

}

extension Enum3Convertible where Self: Equatable
    , T0: Equatable
    , T1: Equatable
    , T2: Equatable
{
    public static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs.asEnum, rhs.asEnum) {
        case (.case0(let lhsv), .case0(let rhsv)):
            return lhsv == rhsv
        case (.case1(let lhsv), .case1(let rhsv)):
            return lhsv == rhsv
        case (.case2(let lhsv), .case2(let rhsv)):
            return lhsv == rhsv
        default:
            return false
        }
    }
}

#if swift(>=4.1)

extension AnyEnum3: Equatable
    where T0: Equatable
    , T1: Equatable
    , T2: Equatable
{}

#endif

public enum AnyEnum4<T0, T1, T2, T3> {
    case case0(T0)
    case case1(T1)
    case case2(T2)
    case case3(T3)

    public init<E: Enum4Convertible>(_ source: E)
        where T0 == E.T0
        , T1 == E.T1
        , T2 == E.T2
        , T3 == E.T3
    {
        self = source.asEnum
    }
}

public protocol Enum4Convertible {
    associatedtype T0
    associatedtype T1
    associatedtype T2
    associatedtype T3
    var asEnum: AnyEnum4<T0, T1, T2, T3> { get }
}

extension AnyEnum4: Enum4Convertible {
    public var asEnum: AnyEnum4 {
        return self
    }
}

extension Enum4Convertible
    where T0 == T1
    , T0 == T2
    , T0 == T3
{
    public func unwrapped() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
            case .case2(let x): return x
            case .case3(let x): return x
        }
    }
}

extension Enum4Convertible {
    public func map0<T>(_ f: (T0) throws -> T) rethrows -> AnyEnum4<T, T1, T2, T3> {
        switch self.asEnum {
        case .case0(let x): return try .case0(f(x))
        case .case1(let x): return .case1(x)
        case .case2(let x): return .case2(x)
        case .case3(let x): return .case3(x)
        }
    }

    public func map1<T>(_ f: (T1) throws -> T) rethrows -> AnyEnum4<T0, T, T2, T3> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return try .case1(f(x))
        case .case2(let x): return .case2(x)
        case .case3(let x): return .case3(x)
        }
    }

    public func map2<T>(_ f: (T2) throws -> T) rethrows -> AnyEnum4<T0, T1, T, T3> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return .case1(x)
        case .case2(let x): return try .case2(f(x))
        case .case3(let x): return .case3(x)
        }
    }

    public func map3<T>(_ f: (T3) throws -> T) rethrows -> AnyEnum4<T0, T1, T2, T> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return .case1(x)
        case .case2(let x): return .case2(x)
        case .case3(let x): return try .case3(f(x))
        }
    }

}

extension Enum4Convertible where Self: Equatable
    , T0: Equatable
    , T1: Equatable
    , T2: Equatable
    , T3: Equatable
{
    public static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs.asEnum, rhs.asEnum) {
        case (.case0(let lhsv), .case0(let rhsv)):
            return lhsv == rhsv
        case (.case1(let lhsv), .case1(let rhsv)):
            return lhsv == rhsv
        case (.case2(let lhsv), .case2(let rhsv)):
            return lhsv == rhsv
        case (.case3(let lhsv), .case3(let rhsv)):
            return lhsv == rhsv
        default:
            return false
        }
    }
}

#if swift(>=4.1)

extension AnyEnum4: Equatable
    where T0: Equatable
    , T1: Equatable
    , T2: Equatable
    , T3: Equatable
{}

#endif

public enum AnyEnum5<T0, T1, T2, T3, T4> {
    case case0(T0)
    case case1(T1)
    case case2(T2)
    case case3(T3)
    case case4(T4)

    public init<E: Enum5Convertible>(_ source: E)
        where T0 == E.T0
        , T1 == E.T1
        , T2 == E.T2
        , T3 == E.T3
        , T4 == E.T4
    {
        self = source.asEnum
    }
}

public protocol Enum5Convertible {
    associatedtype T0
    associatedtype T1
    associatedtype T2
    associatedtype T3
    associatedtype T4
    var asEnum: AnyEnum5<T0, T1, T2, T3, T4> { get }
}

extension AnyEnum5: Enum5Convertible {
    public var asEnum: AnyEnum5 {
        return self
    }
}

extension Enum5Convertible
    where T0 == T1
    , T0 == T2
    , T0 == T3
    , T0 == T4
{
    public func unwrapped() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
            case .case2(let x): return x
            case .case3(let x): return x
            case .case4(let x): return x
        }
    }
}

extension Enum5Convertible {
    public func map0<T>(_ f: (T0) throws -> T) rethrows -> AnyEnum5<T, T1, T2, T3, T4> {
        switch self.asEnum {
        case .case0(let x): return try .case0(f(x))
        case .case1(let x): return .case1(x)
        case .case2(let x): return .case2(x)
        case .case3(let x): return .case3(x)
        case .case4(let x): return .case4(x)
        }
    }

    public func map1<T>(_ f: (T1) throws -> T) rethrows -> AnyEnum5<T0, T, T2, T3, T4> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return try .case1(f(x))
        case .case2(let x): return .case2(x)
        case .case3(let x): return .case3(x)
        case .case4(let x): return .case4(x)
        }
    }

    public func map2<T>(_ f: (T2) throws -> T) rethrows -> AnyEnum5<T0, T1, T, T3, T4> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return .case1(x)
        case .case2(let x): return try .case2(f(x))
        case .case3(let x): return .case3(x)
        case .case4(let x): return .case4(x)
        }
    }

    public func map3<T>(_ f: (T3) throws -> T) rethrows -> AnyEnum5<T0, T1, T2, T, T4> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return .case1(x)
        case .case2(let x): return .case2(x)
        case .case3(let x): return try .case3(f(x))
        case .case4(let x): return .case4(x)
        }
    }

    public func map4<T>(_ f: (T4) throws -> T) rethrows -> AnyEnum5<T0, T1, T2, T3, T> {
        switch self.asEnum {
        case .case0(let x): return .case0(x)
        case .case1(let x): return .case1(x)
        case .case2(let x): return .case2(x)
        case .case3(let x): return .case3(x)
        case .case4(let x): return try .case4(f(x))
        }
    }

}

extension Enum5Convertible where Self: Equatable
    , T0: Equatable
    , T1: Equatable
    , T2: Equatable
    , T3: Equatable
    , T4: Equatable
{
    public static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs.asEnum, rhs.asEnum) {
        case (.case0(let lhsv), .case0(let rhsv)):
            return lhsv == rhsv
        case (.case1(let lhsv), .case1(let rhsv)):
            return lhsv == rhsv
        case (.case2(let lhsv), .case2(let rhsv)):
            return lhsv == rhsv
        case (.case3(let lhsv), .case3(let rhsv)):
            return lhsv == rhsv
        case (.case4(let lhsv), .case4(let rhsv)):
            return lhsv == rhsv
        default:
            return false
        }
    }
}

#if swift(>=4.1)

extension AnyEnum5: Equatable
    where T0: Equatable
    , T1: Equatable
    , T2: Equatable
    , T3: Equatable
    , T4: Equatable
{}

#endif


// MARK: deprecated

@available(*, deprecated, renamed: "AnyEnum2")
public typealias Enum2<T0, T1> = AnyEnum2<T0, T1>
@available(*, deprecated, renamed: "AnyEnum3")
public typealias Enum3<T0, T1, T2> = AnyEnum3<T0, T1, T2>
@available(*, deprecated, renamed: "AnyEnum4")
public typealias Enum4<T0, T1, T2, T3> = AnyEnum4<T0, T1, T2, T3>
@available(*, deprecated, renamed: "AnyEnum5")
public typealias Enum5<T0, T1, T2, T3, T4> = AnyEnum5<T0, T1, T2, T3, T4>
