# STTabbar

[![CI Status](https://img.shields.io/travis/11Shraddha/STTabbar.svg?style=flat)](https://travis-ci.org/11Shraddha/STTabbar)
[![Version](https://img.shields.io/cocoapods/v/STTabbar.svg?style=flat)](https://cocoapods.org/pods/STTabbar)
[![License](https://img.shields.io/cocoapods/l/STTabbar.svg?style=flat)](https://cocoapods.org/pods/STTabbar)
[![Platform](https://img.shields.io/cocoapods/p/STTabbar.svg?style=flat)](https://cocoapods.org/pods/STTabbar)


A subclass on UITabbar that provides allows you to customize a shape of UITabbar with raised center button.  You can change appearance of tabbar according to your needs.  

![alt tag](https://github.com/11Shraddha/STTabbar/blob/master/Tabbar_GIF.gif)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
iOS 10.0+
Xcode 10.0+
Swift 4.2+


## Installation

STTabbar is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'STTabbar'
```

## Usage


1. Setup Stoaryboard. Add UITabbarViewcontroller in the storyboard.
2. Craete custom TabbarController class using below code.


```Swift

class CustomTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myTabbar = tabBar as? STTabbar {
            myTabbar.centerButtonActionHandler = {
                print("Center Button Tapped")
            }
        }
    }
}
```
3. Go to stoaryboard and change UITabBarController class to CustomTabViewController.
![alt tag](https://github.com/11Shraddha/STTabbar/blob/master/TabbarVCClass.png)

4. Also change UItabBar class to STTabbar.
![alt tag](https://github.com/11Shraddha/STTabbar/blob/master/Tabbarclass.png)


## Author

11Shraddha, shraddhasojitra11@gmail.com

## License

STTabbar is available under the MIT license. See the LICENSE file for more info.
