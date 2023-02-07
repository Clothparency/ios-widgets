<br />
<p align="center">
  <img 
      style="margin: auto; width: 5%;"
      src="https://user-images.githubusercontent.com/2159699/215896047-e6eb3ca0-b2d1-40b3-8034-c26913033008.svg" 
      alt="Logo Clear Fashion">
  </img>
</p>
<br />

<h1 align="center">Clear Fashion widgets for iOS and macOS</h1>

<br />

### Display your Clear Fashion widgets on your native iOS and macOS app.

[![Swift Version](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FClothparency%2Fios-widgets%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/Clothparency/ios-widgets)
[![Platform](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FClothparency%2Fios-widgets%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/Clothparency/ios-widgets)
[![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![CocoaPods](https://img.shields.io/badge/cocoapods-supported-blueviolet)](https://cocoapods.org/pods/ClearFashionWidget)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Clothparency/ios-widgets/main/LICENSE.md)

---

Check the latest release here:

https://github.com/Clothparency/ios-widgets/releases/latest

### Installation

There are two ways to install ClearFashionWidget in your project:

- Swift Package Manager
- cocoapods

**Swift Package Manager**

If you are working with Xcode, you can search for ios-widgets package

File > Add Packages…

![Capture d’écran 2023-02-06 à 15 52 45](https://user-images.githubusercontent.com/6204865/217008100-ee147f55-9bfb-48f7-bb0f-f31d8ed0a923.png)

ClearFashionWidget is also available as a Swift Package for the Swift Package Manager. Add it to your dependecies in your `Package.swift` file.
After that you can build your project with the command `swift build`, and eventually run you project (if it is an executable target) with the command `swift run`.
If you want you can also run tests using `swift test`.

```swift
// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "MyApp",
    dependencies: [
        .package(url: "https://github.com/Clothparency/ios-widgets.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MyApp",
            dependencies: ["ClearFashionWidget"]
        )
    ]
)
```

**CocoaPods**

ClearFashionWidget is also available as a pod on [CocoaPods](https://cocoapods.org/pods/ClearFashionWidget "ClearFashionWidget cocoapods").
Add the dependency to your Podfile (choose the release version you prefer):

```ruby
target 'MyApp' do
	pod 'ClearFashionWidget', '~> 1.0'
end
```

and then run pod install (or pod update).

## Sample Project

<br />
<img 
	style="margin: auto; height: 600px"
	src="https://user-images.githubusercontent.com/6204865/217008831-f702f4be-98ce-4606-87e8-dce01e22a84f.gif" 
	alt="Clear Fashion Widget GIF">
</img>
<br />

ClearFashionWidget is compatible with the following platforms:

- iOS
- MacOS

This package exposes a class `ClearFashionWidget` returning a `View` object.

You can easily use it in your application, once you added the package `ios-widgets` to your dependencies.

```swift
import SwiftUI
import ClearFashionWidget

struct ContentView: View {
    var body: some View {
        ClearFashionWidget(
          brandId = "The id of your brand as given by Clear Fashion",
          productIdentifier = "The identifier of your product as given by Clear Fashion",
          lang = "fr" // Must be either "fr" or "en"
      )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

## Monitoring

In case of trouble, you can always check server's status at https://status.clear-fashion.com

<br />
<br />
<p align="center">
  <img 
      style="margin: auto; width: 20%;"
      src="https://user-images.githubusercontent.com/2159699/215894277-8251062e-b339-4bf6-a958-42e792059ba3.svg" 
      alt="Logo Clear Fashion">
  </img>
</p>
