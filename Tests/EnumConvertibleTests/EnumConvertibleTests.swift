import XCTest
import EnumConvertible

enum MyEnum2 {
    case int(Int)
    case str(String)
}

extension MyEnum2: Enum2Convertible {
    func asEnum() -> AnyEnum2<Int, String> {
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
    func asEnum() -> AnyEnum3<Int, String, Double> {
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
    func asEnum() -> AnyEnum4<Int, String, Double, [Int]> {
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
    func asEnum() -> AnyEnum5<Int, String, Double, [Int], [String: Int]> {
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
        switch (AnyEnum2(MyEnum2.int(int)), AnyEnum2(AnyEnum2(MyEnum2.int(int)))) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum2(MyEnum2.str(str)), AnyEnum2(MyEnum2.str(str))) {
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
        switch (AnyEnum3(MyEnum3.int(int)), AnyEnum3(AnyEnum3(MyEnum3.int(int)))) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum3(MyEnum3.str(str)), AnyEnum3(AnyEnum3(MyEnum3.str(str)))) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum3(MyEnum3.double(double)), AnyEnum3(AnyEnum3(MyEnum3.double(double)))) {
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
        switch (AnyEnum4(MyEnum4.int(int)), AnyEnum4(AnyEnum4(MyEnum4.int(int)))) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum4(MyEnum4.str(str)), AnyEnum4(AnyEnum4(MyEnum4.str(str)))) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum4(MyEnum4.double(double)), AnyEnum4(AnyEnum4(MyEnum4.double(double)))) {
        case (.case2(let x), .case2(let y)) where x == double && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum4(MyEnum4.array(array)), AnyEnum4(AnyEnum4(MyEnum4.array(array)))) {
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
        switch (AnyEnum5(MyEnum5.int(int)), AnyEnum5(AnyEnum5(MyEnum5.int(int)))) {
        case (.case0(let x), .case0(let y)) where x == int && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum5(MyEnum5.str(str)), AnyEnum5(AnyEnum5(MyEnum5.str(str)))) {
        case (.case1(let x), .case1(let y)) where x == str && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum5(MyEnum5.double(double)), AnyEnum5(AnyEnum5(MyEnum5.double(double)))) {
        case (.case2(let x), .case2(let y)) where x == double && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum5(MyEnum5.array(array)), AnyEnum5(AnyEnum5(MyEnum5.array(array)))) {
        case (.case3(let x), .case3(let y)) where x == array && x == y:
            break
        default:
            XCTFail()
        }
        switch (AnyEnum5(MyEnum5.dictionary(dictionary)), AnyEnum5(AnyEnum5(MyEnum5.dictionary(dictionary)))) {
        case (.case4(let x), .case4(let y)) where x == dictionary && x == y:
            break
        default:
            XCTFail()
        }
    }

    func testUnwrapped() {
        let enum2_1 = AnyEnum2<Int, Int>.case0(200)
        switch (enum2_1) {
        case .case0(let x) where x == enum2_1.unwrapped():
            break
        default:
            XCTFail()
        }

        let enum2_2 = AnyEnum2<Int, Int>.case1(200)
        switch (enum2_2) {
        case .case1(let x) where x == enum2_2.unwrapped():
            break
        default:
            XCTFail()
        }
    }

    func testMap() {
        let enum3 = AnyEnum3<Int, Float, Double>.case0(200)
        let mappedEnum3_1 = enum3.map0 { "\($0)" }
        let mappedEnum3_2 = enum3.map1 { "\($0)" }
        let mappedEnum3_3 = enum3.map2 { "\($0)" }
        switch mappedEnum3_1 {
        case .case0(let x) where x == "200":
            break
        default:
            XCTFail()
        }
        switch mappedEnum3_2 {
        case .case0(let x) where x == 200:
            break
        default:
            XCTFail()
        }
        switch mappedEnum3_3 {
        case .case0(let x) where x == 200:
            break
        default:
            XCTFail()
        }
    }
    
    #if swift(>=4.1)
    
    func testEquatable() {
        let enum2a = AnyEnum2<Int, String>.case0(1)
        let enum2b = AnyEnum2<Int, String>.case0(1)
        let enum2c = AnyEnum2<Int, String>.case1("1")
        XCTAssertEqual(enum2a, enum2b)
        XCTAssertNotEqual(enum2a, enum2c)
    }
    
    #endif

    #if swift(>=4.1)
    static var allTests = [
        ("testEnum2", testEnum2),
        ("testEnum3", testEnum3),
        ("testEnum4", testEnum4),
        ("testEnum5", testEnum5),
        ("testUnwrapped", testUnwrapped),
        ("testMap", testMap),
        ("testEquatable", testEquatable),
    ]
    #else
    static var allTests = [
        ("testEnum2", testEnum2),
        ("testEnum3", testEnum3),
        ("testEnum4", testEnum4),
        ("testEnum5", testEnum5),
        ("testUnwrapped", testUnwrapped),
        ("testMap", testMap),
    ]
    #endif
}
