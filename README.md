# ICAppBrowser

#[![CI Status](http://img.shields.io/travis/Arief Budi Santoso/ICAppBrowser.svg?style=flat)](https://travis-ci.org/Arief Budi Santoso/ICAppBrowser)
[![Version](https://img.shields.io/cocoapods/v/ICAppBrowser.svg?style=flat)](http://cocoapods.org/pods/ICAppBrowser)
[![License](https://img.shields.io/cocoapods/l/ICAppBrowser.svg?style=flat)](http://cocoapods.org/pods/ICAppBrowser)
[![Platform](https://img.shields.io/cocoapods/p/ICAppBrowser.svg?style=flat)](http://cocoapods.org/pods/ICAppBrowser)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
For Navigation Controller
```ruby
let webVC = ICAppBrowserVC(urlString: "https://www.google.com")
webVC.delegate = self
self.navigationController?.pushViewController(webVC, animated: true)
```

For Present Controller default
```ruby
let webVC = ICAppBrowserModalVC(urlString: "https://www.google.com")
self.present(webVC, animated: true, completion: nil)
```

For Present Controller Themes
available themes : dark, lightBlack, lightBlue
available dismissbutton : arrow, cross
```ruby
let webVC = ICAppBrowserModalVC(urlString: "https://www.google.com", theme: .dark, dismissButtonStyle: .arrow)
self.present(webVC, animated: true, completion: nil)
```


## Requirements
```ruby
swift 3
```

## Installation

ICAppBrowser is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ICAppBrowser", :git => 'https://github.com/ioscodigo/ICAppBrowser.git'
```

## Author

Arief Budi Santoso, me@ariefbudisantoso.com

## License

ICAppBrowser is available under the MIT license. See the LICENSE file for more info.
