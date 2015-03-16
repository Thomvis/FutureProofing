# FutureProofing
A companion library to BrightFutures with extensions to CocoaTouch that provides a Future-based alternative to asynchronous API's.

The goal for this library is to become a community driven, best practice, helper-framework that most users of BrightFutures include when using the core library.

## Extensions

### UIView
```swift
UIView.animateWithDuration(0.5) {
  // perform animation
}.onComplete { _ in
  // callback executed when the Future returned from animateWithDuration completes
}
```

### NSURLSession
```swift
let (task, f) = session.dataTaskWithURL(NSURL(string: "http://www.example.org")!)
task.resume()

f.onSuccess { (data, response) in
  // do something with the response
}.onFailure { error in 
  // handle error
}
```
