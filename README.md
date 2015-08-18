#LewPopupViewController

iOS 下的弹出视图。支持iPhone/iPad

![效果图](https://github.com/pljhonglu/LewPopupViewController/blob/master/images/default.gif)

## 使用方法

* 弹出视图

```
PopupView *view = [PopupView defaultPopupView];
view.parentVC = self;

[self lew_presentPopupView:view animation:[LewPopupViewAnimationFade new] dismissed:^{
NSLog(@"动画结束");
}];
```

* 视图消失

```
[_parentVC lew_dismissPopupView];
```

## 扩展动画

本身自带了四种动画形式，如果你觉得这四种动画无法满足你的需求，可以自行扩展，只需要在自定义类中实现 LewPopupAnimation 接口，并重写相应的两个方法即可

## License | 许可

This code is distributed under the terms of the MIT license.  
代码使用 MIT license 许可发布.
