# ViewCondition

✨ Super sweet syntactic sugar for SwiftUI.View initializers.

## At a Glance

```swift
struct BorderTextView: View {
  var color: Color?

  @ViewBuilder
  var body: some View {
    Text("Hello")
      .if(let: color) {
        $0.border($1)
      }
  }
}
```

This is equivalent to:

```swift
struct BorderTextView: View {
  var color: Color?

  @ViewBuilder
  var body: some View {
    let text = Text("Hello")
    if let color = color {
      text.border(color) // border doesn't allow optional
    } else {
      text
    }
  }
}
```

## Operators

### if let

```swift
let color: Color?
Text("Hello")
  .if(let: color) {
    $0.border($1)
  }
```

### if

```swift
let text = ""
Text("Hello")
  .if(text == "Hello") {
    $0.bold()
  }
```

### ifNot

```swift
let text = ""
Text("Hello")
  .ifNot(text == "Hello") {
    $0.bold()
  }
```

### then

```swift
let text = ""
Text("Hello")
  .then {
    if text == "Hello" {
      $0.bold()
    } else {
      $0.italic()
    }
  }
```

#### ⚠️ Becareful

**If you don't return view in `else`, the view may not come out.**


## Installation

Using Swift Package Manager:

```swift
import PackageDescription

let package = Package(
  name: "MyAwesomeApp",
  dependencies: [
    .package(url: "https://github.com/tokijh/ViewCondition.git", from: "1.0.0")
  ]g 
)
```

## Special thanks to..
- [@leedh2004](https://github.com/leedh2004)

## License
**ViewCondition** is under MIT license. See the [LICENSE](LICENSE) file for more info.
