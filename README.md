# EnumConvertible

Protocols for enum abstraction.

## Example
```swift
extension MyEnumIntOrString: Enum2Convertible {
  var asEnum: Enum2<Int, String> {
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
