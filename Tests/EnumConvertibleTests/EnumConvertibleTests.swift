import XCTest
import EnumConvertible

enum MyEnum2 {
    case int(Int)
    case str(String)
}

extension MyEnum2: Enum2Convertible {
    var asEnum: AnyEnum2<Int, String> {
        switch self {
        case .int(let int): return .case0(int)
        case .str(let str): return .case1(str)
        }
    }
}

enum MyEnum3 {
    case int(Int)
    case str(String)
    case double(Double)
}

extension MyEnum3: Enum3Convertible {
    var asEnum: AnyEnum3<Int, String, Double> {
        switch self {
        case .int(let int): return .case0(int)
        case .str(let str): return .case1(str)
        case .double(let double): return .case2(double)
        }
    }
}

enum MyEnum4 {
    case int(Int)
    case str(String)
    case double(Double)
    case array([Int])
}

extension MyEnum4: Enum4Convertible {
    var asEnum: AnyEnum4<Int, String, Double, [Int]> {
        switch self {
        case .int(let int): return .case0(int)
        case .str(let str): return .case1(str)
        case .double(let double): return .case2(double)
        case .array(let array): return .case3(array)
        }
    }
}

enum MyEnum5 {
    case int(Int)
    case str(String)
    case double(Double)
    case array([Int])
    case dictionary([String: Int])
}

extension MyEnum5: Enum5Convertible {
    var asEnum: AnyEnum5<Int, String, Double, [Int], [String: Int]> {
        switch self {
        case .int(let int): return .case0(int)
        case .str(let str): return .case1(str)
        case .double(let double): return .case2(double)
        case .array(let array): return .case3(array)
        case .dictionary(let dictionary): return .case4(dictionary)
        }
    }
}


class EnumConvertibleTests: XCTestCase {
    func testEnum2() {
        let int = 100
        let str = "abc"
        switch (MyEnum2.int(int).asEnum, MyEnum2.int(int).asEnum.asEnum) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum2.str(str).asEnum, MyEnum2.str(str).asEnum.asEnum) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
    }
    
    func testEnum3() {
        let int = 100
        let str = "abc"
        let double = 3.14
        switch (MyEnum3.int(int).asEnum, MyEnum3.int(int).asEnum.asEnum) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum3.str(str).asEnum, MyEnum3.str(str).asEnum.asEnum) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum3.double(double).asEnum, MyEnum3.double(double).asEnum.asEnum) {
        case (.case2(let x), .case2(let y)) where x == double && x == y:
            break
        default:
            XCTFail()
        }
    }
    
    func testEnum4() {
        let int = 100
        let str = "abc"
        let double = 3.14
        let array = [1, 2, 3]
        switch (MyEnum4.int(int).asEnum, MyEnum4.int(int).asEnum.asEnum) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum4.str(str).asEnum, MyEnum4.str(str).asEnum.asEnum) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum4.double(double).asEnum, MyEnum4.double(double).asEnum.asEnum) {
        case (.case2(let x), .case2(let y)) where x == double && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum4.array(array).asEnum, MyEnum4.array(array).asEnum.asEnum) {
        case (.case3(let x), .case3(let y)) where x == array && x == y:
            break
        default:
            XCTFail()
        }
    }
    
    func testEnum5() {
        let int = 100
        let str = "abc"
        let double = 3.14
        let array = [1, 2, 3]
        let dictionary = ["a": 0, "b": 200]
        switch (MyEnum5.int(int).asEnum, MyEnum5.int(int).asEnum.asEnum) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum5.str(str).asEnum, MyEnum5.str(str).asEnum.asEnum) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum5.double(double).asEnum, MyEnum5.double(double).asEnum.asEnum) {
        case (.case2(let x), .case2(let y)) where x == double && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum5.array(array).asEnum, MyEnum5.array(array).asEnum.asEnum) {
        case (.case3(let x), .case3(let y)) where x == array && x == y:
            break
        default:
            XCTFail()
        }
        switch (MyEnum5.dictionary(dictionary).asEnum, MyEnum5.dictionary(dictionary).asEnum.asEnum) {
        case (.case4(let x), .case4(let y)) where x == dictionary && x == y:
            break
        default:
            XCTFail()
        }
    }

    static var allTests = [
        ("testEnum2", testEnum2),
        ("testEnum3", testEnum3),
        ("testEnum4", testEnum4),
        ("testEnum5", testEnum5),
    ]
}
