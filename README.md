# Bv3dPreview

[![CI Status](http://img.shields.io/travis/koldo92/Bv3dPreview.svg?style=flat)](https://travis-ci.org/koldo92/Bv3dPreview)
[![Version](https://img.shields.io/cocoapods/v/Bv3dPreview.svg?style=flat)](http://cocoapods.org/pods/Bv3dPreview)
[![License](https://img.shields.io/cocoapods/l/Bv3dPreview.svg?style=flat)](http://cocoapods.org/pods/Bv3dPreview)
[![Platform](https://img.shields.io/cocoapods/p/Bv3dPreview.svg?style=flat)](http://cocoapods.org/pods/Bv3dPreview)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 9.0 or higher.

## Installation

Bv3dPreview is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Bv3dPreview'
```

Or you can drag the Bv3dPreview.swift directly into your project and import the library whenever you need it.

## Usage

**1.- From storyboard**
Drag an UIView and asign his class to `Bv3dPreview`.
On the controller connect an @IBOutlet to the UIView you have created.
Finally, use configure the obj model and the textures(optional)

**2.- From code**
```swift
guard let objUrl = Bundle.main.url(forResource: "Fighter", withExtension: "obj") else {
return }
let model3DViewer = Bv3dPreview(from: objUrl, textures: [
.baseColor:"Fighter_Diffuse_25.jpg",
.specular:"Fighter_Specular_25.jpg",
.emission:"Fighter_Illumination_25.jpg"])
codeBv3dPreview.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
view.addSubview(model3DViewer)
```
## Author

koldo92, koldo@byvapps.com

## License

Bv3dPreview is available under the MIT license. See the LICENSE file for more info.
