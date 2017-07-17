
func just<T>(_ arg: T) -> T {
    return arg
}

func just<T>(_ arg: Never) -> T {
    fatalError()
}

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
    where T1 == Never
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
        }
    }
}

extension Enum2Convertible
    where T0 == Never
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
        }
    }
}

extension Enum2Convertible
    where T0 == T1
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
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
    where T1 == Never
    , T2 == Never
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
        }
    }
}

extension Enum3Convertible
    where T0 == Never
    , T2 == Never
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
        }
    }
}

extension Enum3Convertible
    where T2 == Never
    , T0 == T1
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
        }
    }
}

extension Enum3Convertible
    where T0 == Never
    , T1 == Never
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
        }
    }
}

extension Enum3Convertible
    where T1 == Never
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
        }
    }
}

extension Enum3Convertible
    where T0 == Never
    , T1 == T2
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
        }
    }
}

extension Enum3Convertible
    where T0 == T1
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
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
    where T1 == Never
    , T2 == Never
    , T3 == Never
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T2 == Never
    , T3 == Never
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T2 == Never
    , T3 == Never
    , T0 == T1
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T1 == Never
    , T3 == Never
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T1 == Never
    , T3 == Never
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T3 == Never
    , T1 == T2
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T3 == Never
    , T0 == T1
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T1 == Never
    , T2 == Never
{
    func flatten() -> T3 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T1 == Never
    , T2 == Never
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T2 == Never
    , T1 == T3
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T2 == Never
    , T0 == T1
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T1 == Never
    , T2 == T3
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T1 == Never
    , T0 == T2
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == Never
    , T1 == T2
    , T1 == T3
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
        }
    }
}

extension Enum4Convertible
    where T0 == T1
    , T0 == T2
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
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
    where T1 == Never
    , T2 == Never
    , T3 == Never
    , T4 == Never
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T2 == Never
    , T3 == Never
    , T4 == Never
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T2 == Never
    , T3 == Never
    , T4 == Never
    , T0 == T1
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T3 == Never
    , T4 == Never
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T3 == Never
    , T4 == Never
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T3 == Never
    , T4 == Never
    , T1 == T2
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T3 == Never
    , T4 == Never
    , T0 == T1
    , T0 == T2
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T2 == Never
    , T4 == Never
{
    func flatten() -> T3 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T2 == Never
    , T4 == Never
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T2 == Never
    , T4 == Never
    , T1 == T3
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T2 == Never
    , T4 == Never
    , T0 == T1
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T4 == Never
    , T2 == T3
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T4 == Never
    , T0 == T2
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T4 == Never
    , T1 == T2
    , T1 == T3
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T4 == Never
    , T0 == T1
    , T0 == T2
    , T0 == T3
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T2 == Never
    , T3 == Never
{
    func flatten() -> T4 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T2 == Never
    , T3 == Never
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T2 == Never
    , T3 == Never
    , T1 == T4
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T2 == Never
    , T3 == Never
    , T0 == T1
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T3 == Never
    , T2 == T4
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T3 == Never
    , T0 == T2
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T3 == Never
    , T1 == T2
    , T1 == T4
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T3 == Never
    , T0 == T1
    , T0 == T2
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T2 == Never
    , T3 == T4
{
    func flatten() -> T3 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T2 == Never
    , T0 == T3
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T2 == Never
    , T1 == T3
    , T1 == T4
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T2 == Never
    , T0 == T1
    , T0 == T3
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == Never
    , T2 == T3
    , T2 == T4
{
    func flatten() -> T2 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T1 == Never
    , T0 == T2
    , T0 == T3
    , T0 == T4
{
    func flatten() -> T0 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}

extension Enum5Convertible
    where T0 == Never
    , T1 == T2
    , T1 == T3
    , T1 == T4
{
    func flatten() -> T1 {
        switch self.asEnum {
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
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
            case .case0(let x): return just(x)
            case .case1(let x): return just(x)
            case .case2(let x): return just(x)
            case .case3(let x): return just(x)
            case .case4(let x): return just(x)
        }
    }
}


