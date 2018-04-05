# CSPopController

[![CI Status](http://img.shields.io/travis/dormitory219/CSPopController.svg?style=flat)](https://travis-ci.org/dormitory219/CSPopController)
[![Version](https://img.shields.io/cocoapods/v/CSPopController.svg?style=flat)](http://cocoapods.org/pods/CSPopController)
[![License](https://img.shields.io/cocoapods/l/CSPopController.svg?style=flat)](http://cocoapods.org/pods/CSPopController)
[![Platform](https://img.shields.io/cocoapods/p/CSPopController.svg?style=flat)](http://cocoapods.org/pods/CSPopController)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CSPopController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CSPopController'
```

## How to Use

//show popView
```
- (IBAction)showPop1:(id)sender
{
//设置主题theme
    CSPopTheme *theme = [[CSPopTheme alloc] init];
    
theme.maskTypeTheme(CSPopThemeMaskTypeDimmed).cornerRadiusTheme(16.0f).maxPopupWidthTheme(280.0f).animationPresentionDurationTheme(0.3f).animationDismissDurationTheme(0.3f).shouldDismissOnBackgroundTouchTheme(NO).popThemePresentationStyleTheme(CSPPopThemePresentationStyleSlideInFromTopAndAngleBounce).popThemeDismissStyleTheme(CSPPopThemeDismissStyleSlideInToBottomAndAngle).horizontalOffsetTheme(0.f).verticalOffsetTheme(-60.f).dismissPointTheme(CGPointMake(100, 60));
    
    //创建弹窗内容自定义视图popView
    CSPopView *popView = [CSPopView popView];
    popView.delegate = self;
    
    //popController初始化
    self.popController = [[CSPopController alloc] initWithContent:popView];
    self.popController.theme = theme;
    //popController 展示
    [self.popController presentPopControllerAnimated:YES];
}

```

//dismiss popView
```
- (void)dimissPopView:(CSPopView *)popView
{
    [self.popController dismissPopControllerAnimated:YES];
}
```

## Author

dormitory219, 289067005@qq.com

## License

CSPopController is available under the MIT license. See the LICENSE file for more info.
