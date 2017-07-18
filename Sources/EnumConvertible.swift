
public enum Enum2<T0, T1> {
    case case0(T0)
    case case1(T1)
}

public protocol Enum2Convertible {
    associatedtype T0
    associatedtype T1
    var asEnum: Enum2<T0, T1> { get }
}

extension Enum2: Enum2Convertible {
    public var asEnum: Enum2 {
        return self
    }
}

extension Enum2Convertible
    where T0 == T1
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
        }
    }
}

public enum Enum3<T0, T1, T2> {
    case case0(T0)
    case case1(T1)
    case case2(T2)
}

public protocol Enum3Convertible {
    associatedtype T0
    associatedtype T1
    associatedtype T2
    var asEnum: Enum3<T0, T1, T2> { get }
}

extension Enum3: Enum3Convertible {
    public var asEnum: Enum3 {
        return self
    }
}

extension Enum3Convertible
    where T0 == T1
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
            case .case2(let x): return x
        }
    }
}

public enum Enum4<T0, T1, T2, T3> {
    case case0(T0)
    case case1(T1)
    case case2(T2)
    case case3(T3)
}

public protocol Enum4Convertible {
    associatedtype T0
    associatedtype T1
    associatedtype T2
    associatedtype T3
    var asEnum: Enum4<T0, T1, T2, T3> { get }
}

extension Enum4: Enum4Convertible {
    public var asEnum: Enum4 {
        return self
    }
}

extension Enum4Convertible
    where T0 == T1
    , T0 == T2
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
            case .case2(let x): return x
            case .case3(let x): return x
        }
    }
}

public enum Enum5<T0, T1, T2, T3, T4> {
    case case0(T0)
    case case1(T1)
    case case2(T2)
    case case3(T3)
    case case4(T4)
}

public protocol Enum5Convertible {
    associatedtype T0
    associatedtype T1
    associatedtype T2
    associatedtype T3
    associatedtype T4
    var asEnum: Enum5<T0, T1, T2, T3, T4> { get }
}

extension Enum5: Enum5Convertible {
    public var asEnum: Enum5 {
        return self
    }
}

extension Enum5Convertible
    where T0 == T1
    , T0 == T2
    , T0 == T3
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return x
            case .case1(let x): return x
            case .case2(let x): return x
            case .case3(let x): return x
            case .case4(let x): return x
        }
    }
}

