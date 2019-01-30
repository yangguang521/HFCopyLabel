//
//  CopyLabel.swift
//  HFCopyLabel
//
//  Created by HF on 2019/1/22.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class CopyLabel: UILabel {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
}

extension UILabel {
    private static let copyEnableKey = UnsafeRawPointer(bitPattern: "copyEnableKey".hashValue)!
    //MARK: - 是否可长按复制
    var isCopyEnable: Bool {
        set(newValue) {
            objc_setAssociatedObject(self, UILabel.copyEnableKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
            //增加长按手势
            addLongPressGesture()
        }
        get {
            return objc_getAssociatedObject(self, UILabel.copyEnableKey) as! Bool
        }
    }
    
    
    private func addLongPressGesture() {
        self.isUserInteractionEnabled = true
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressMethod(gesture:)))
        self.addGestureRecognizer(longPressGesture)
    }
    
    @objc private func handleLongPressMethod(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began  {
            self.becomeFirstResponder()
            //根据需要改变
            let copyItem = UIMenuItem(title: "复制", action: #selector(copyLabelTextMethod))
            let deleteItem = UIMenuItem(title: "删除", action: #selector(deleteTextMethod))
            UIMenuController.shared.menuItems = [copyItem,deleteItem]
            UIMenuController.shared.setTargetRect(frame, in: superview ?? self)
            UIMenuController.shared.setMenuVisible(true, animated: true)
        }
    }
    
    @objc private func copyLabelTextMethod() {
        let pasteboard = UIPasteboard.general
        pasteboard.string = self.text ?? ""
        print("复制结束")
    }
    
    @objc private func deleteTextMethod() {
        //继承UIlabel,用block回调实现比较好
        print("点击了删除操作")
    }
    
    open override var canBecomeFirstResponder: Bool {
        return objc_getAssociatedObject(self, UILabel.copyEnableKey) as! Bool
    }

    open override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return action == #selector(copyLabelTextMethod) || action == #selector(deleteTextMethod)
    }
    
    
    //公开的方法
    //action    Selector    "cut:"
    //action    Selector    "copy:"
    //action    Selector    "select:"
    //action    Selector    "selectAll:"
    //action    Selector    "paste:"
    //action    Selector    "delete:"
    //私有的方法
    //action    Selector    "_promptForReplace:"
    //action    Selector    "_transliterateChinese:"
    //action    Selector    "_insertDrawing:"
    //action    Selector    "_showTextStyleOptions:"
    //action    Selector    "_lookup:"
    //action    Selector    "_define:"
    //action    Selector    "_addShortcut:"
    //action    Selector    "_accessibilitySpeak:"
    //action    Selector    "_accessibilitySpeakLanguageSelection:"
    //action    Selector    "_accessibilityPauseSpeaking:"
    //action    Selector    "_share:"
    //action    Selector    "makeTextWritingDirectionRightToLeft:"
    //action    Selector    "makeTextWritingDirectionLeftToRight:"
    
    
    
    /*
     //公开使用系统的方法
     public protocol UIResponderStandardEditActions : NSObjectProtocol {
     
     @available(iOS 3.0, *)
     optional public func cut(_ sender: Any?)
     
     @available(iOS 3.0, *)
     optional public func copy(_ sender: Any?)
     
     @available(iOS 3.0, *)
     optional public func paste(_ sender: Any?)
     
     @available(iOS 3.0, *)
     optional public func select(_ sender: Any?)
     
     @available(iOS 3.0, *)
     optional public func selectAll(_ sender: Any?)
     
     @available(iOS 3.2, *)
     optional public func delete(_ sender: Any?)
     
     @available(iOS 5.0, *)
     optional public func makeTextWritingDirectionLeftToRight(_ sender: Any?)
     
     @available(iOS 5.0, *)
     optional public func makeTextWritingDirectionRightToLeft(_ sender: Any?)
     
     @available(iOS 6.0, *)
     optional public func toggleBoldface(_ sender: Any?)
     
     @available(iOS 6.0, *)
     optional public func toggleItalics(_ sender: Any?)
     
     @available(iOS 6.0, *)
     optional public func toggleUnderline(_ sender: Any?)
     
     
     @available(iOS 7.0, *)
     optional public func increaseSize(_ sender: Any?)
     
     @available(iOS 7.0, *)
     optional public func decreaseSize(_ sender: Any?)
     }
     
     */
}
