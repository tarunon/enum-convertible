# EnumConvertible

Protocols for enum abstraction.
This library contains 2-5 case enum abstract protocols.

## Example
```swift
extension MyEnumIntOrString: Enum2Convertible {
  var asEnum: AnyEnum2<Int, String> {
    ...
  }
}

func argumentIsAnyEnumIntOrString<E: Enum2Convertible>(arg: E) 
  where E.case0 == Int
  , E.case1 == String 
{
  switch arg.asEnum {
    case .case0(let intValue):
    ...
  }
}

argumentIsAnyEnumIntOrString(arg: myEnumValue)
```

## Instalation
### Carthage
```ruby
github "tarunon/enum-convertible"
```

### Swift Package Manager
Adding this dependency
```swift
.Package(url: "https://github.com/tarunon/enum-convertible.git", majorVersion: 0)
```

## Requirement
Platform | Version
--- | ---
iOS | 8.0+
macOS | 10.9+
tvOS | 9.0+
watchOS | 2.0+
Swift | 3.1+

## Needs 6 or more cases...
Adding environment variable `ENUM_CONVERTIBLE_MAX_SERIAL_NUMBER` then EnumConvertible.swift will contains 2-`ENUM_CONVERTIBLE_MAX_SERIAL_NUMBER` case enum protocols.
Or, adding `ENUM_CONVERTIBLE_SPECIFIC_NUMBERS`, it should be comma separated numerics, then EnumConvertible.swift contains the specific case enum protocols.
This project generate code using [gyb](https://github.com/apple/swift/blob/master/utils/gyb.py), and EnumConvertible.xcodeproj contains code generating script.
If you use Carthage, it work well injecting custom environment variable.
```sh
ENUM_CONVERTIBLE_MAX_SERIAL_NUMBER=10 carthage bootstrap
```
