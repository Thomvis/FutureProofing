# FutureProofing
A companion library to BrightFutures with extensions that provides a Future-based alternative to asynchronous API's.

The goal for this library is to become a community driven, best practice, helper-framework that most users of BrightFutures include when using the core library.

This project is inspired by, and based in part on, the [PromiseKit extensions](https://github.com/mxcl/PromiseKit/tree/master/Extensions).

[![Join the chat at https://gitter.im/Thomvis/BrightFutures](https://badges.gitter.im/Thomvis/BrightFutures.svg)](https://gitter.im/Thomvis/BrightFutures?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![CocoaPods version](https://img.shields.io/cocoapods/v/FutureProofing.svg)](https://cocoapods.org/pods/FutureProofing)


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
let (task, f): URLSession.FutureSessionDataTask = session.dataTask(with: URL(string: "http://www.example.org")!)
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

## Installation
### [CocoaPods](http://cocoapods.org/)

1. Add the following to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html):

    ```rb
    pod 'FutureProofing'
    ```

2. Integrate your dependencies using frameworks: add `use_frameworks!` to your Podfile.
3. Run `pod install`.

### [Carthage](https://github.com/Carthage/Carthage)

1. Add the following to your [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile):

    ```
    github "Thomvis/FutureProofing"
    ```

2. Run `carthage update` and follow the steps as described in Carthage's [README](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).
