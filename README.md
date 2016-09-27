# FutureProofing
A companion library to BrightFutures with extensions that provides a Future-based alternative to asynchronous API's.

The goal for this library is to become a community driven, best practice, helper-framework that most users of BrightFutures include when using the core library.

This project is inspired by, and based in part on, the [PromiseKit extensions](https://github.com/mxcl/PromiseKit/tree/master/Extensions).

## Extensions sample

## UIKit
### UIView
```swift
UIView.animate(withDuration: 0.5) {
  // perform animation
}.onComplete { _ in
  // callback executed when the Future returned from animateWithDuration completes
}
```

## Foundation
### URLSession
```swift
let (task, f) = session.dataTask(with: URL(string: "http://www.example.org")!)
task.resume()

f.onSuccess { (data, response) in
  // do something with the response
}.onFailure { error in
  // handle error
}
```

## AppKit
### NSWindow
```swift
let f = window.beginSheet(sheetWindow: sheetWindow)
f.onSuccess { modalResponse in
  // do something with the response
}
```
