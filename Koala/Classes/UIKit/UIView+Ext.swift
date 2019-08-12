//
//  UIView+Ext.swift
//  Koala
//
//  Created by qiupeng on 2019/6/12.
//

import Foundation

public extension KoalaNamespace where T: UIView {
    
    var snapshot: UIImage? {
        
        UIGraphicsBeginImageContext(self.value.bounds.size)
        if let ctx = UIGraphicsGetCurrentContext() {
            self.value.layer .render(in: ctx)
            return UIGraphicsGetImageFromCurrentImageContext()
        }
        
        return nil
    }
}

public extension KoalaNamespace where T: UIView {
    
    func removeAllSubviews() {
        self.value.subviews.forEach { (subView) in
            subView.removeFromSuperview()
        }
    }
    
    var viewController: UIViewController? {
        var superView = self.value.superview
        while (superView != nil) {
            if superView?.next is UIViewController {
                return superView?.next as? UIViewController
            } else {
                superView = superView?.superview
            }
        }
        return nil
    }
}

// layout
public extension KoalaNamespace where T: UIView {
    
    var left: CGFloat {
        set {
            var frame = self.value.frame
            frame.origin.x = newValue
            self.value.frame = frame
        }
        get {
            return self.value.frame.origin.x
        }
    }
    
    var right: CGFloat {
        set {
            var frame = self.value.frame
            frame.origin.x = newValue - frame.size.height
            self.value.frame = frame
        }
        get {
            return self.value.frame.origin.x + self.value.frame.size.width
        }
    }
    
    var top: CGFloat {
        set {
            var frame = self.value.frame
            frame.origin.y = newValue
            self.value.frame = frame
        }
        get {
            return self.value.frame.origin.y
        }
    }
    
    var bottom: CGFloat {
        set {
            var frame = self.value.frame
            frame.origin.y = newValue - frame.size.height
            self.value.frame = frame
        }
        get {
            return self.value.frame.origin.y + self.value.frame.size.height
        }
    }
    
    var width: CGFloat {
        set {
            var frame = self.value.frame
            frame.size.width = newValue
            self.value.frame = frame
        }
        get {
            return self.value.frame.size.width
        }
    }
    
    var height: CGFloat {
        set {
            var frame = self.value.frame
            frame.size.height = newValue
            self.value.frame = frame
        }
        get {
            return self.value.frame.size.height
        }
    }
    
}


// MARK: - Gesture

var AssociateObjectKey_Gesture_OnTap = "kl.onTap"

public typealias OnTap = (UIView, UITapGestureRecognizer) -> Void

public extension KoalaNamespace where T: UIView {
    
    
    func onTap(_ closure: @escaping OnTap) {
        let ges = UITapGestureRecognizer.init { (gesture) in  
            closure(self.value, gesture as! UITapGestureRecognizer)
        }
        self.value.addGestureRecognizer(ges)
    }
    
}

extension UIGestureRecognizer {
    
    typealias Handle = (UIGestureRecognizer) -> Void
    
    convenience init(handler: @escaping Handle) {
        self.init()
        self.handler = handler
        self.addTarget(self, action: #selector(handleGesture(_:)))
    }
    
    var handler: Handle? {
        set {
            objc_setAssociatedObject(self, &AssociateObjectKey_Gesture_OnTap, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get {
            return objc_getAssociatedObject(self, &AssociateObjectKey_Gesture_OnTap) as? Handle
        }
    }
    
    @objc func handleGesture(_ ges: UIGestureRecognizer) {
        self.handler?(ges)
    }
    
}
