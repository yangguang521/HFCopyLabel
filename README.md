# HFCopyLabel
这是extension UILabel运行时增加属性isCopyEnable，通过长按手势弹出自定义UIMenuItem的UIMenuController

监听UIMenuController的弹出与消失

NotificationCenter.default.addObserver(self, selector: #selector(willShow), name: UIMenuController.willShowMenuNotification, object: nil)

NotificationCenter.default.addObserver(self, selector: #selector(willHide), name: UIMenuController.willHideMenuNotification, object: nil)

![image](https://github.com/yangguang521/HFCopyLabel/blob/master/copy.png)
