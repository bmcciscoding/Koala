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
    
    typealias ShadowParams = (x: CGFloat, y: CGFloat, blur: CGFloat, spread: CGFloat, color: UIColor, alpha: CGFloat)
    func shadow(_ params: ShadowParams) {
        let layer = self.value.layer
        layer.shadowOffset = CGSize.init(width: params.x, height: params.y)
        layer.shadowRadius = params.blur
        layer.shadowOpacity = Float(params.alpha)
        if params.spread != 0 {
            layer.shadowPath = {
                let dx = -params.spread
                let rect = self.value.bounds.insetBy(dx: dx, dy: dx)
                return UIBezierPath.init(rect: rect).cgPath
            }()
        } else {
            layer.shadowPath = nil
        }
    }
    
    func shadow(_ x: CGFloat, _ y: CGFloat, _ blur: CGFloat, _ spread: CGFloat, _ color: UIColor, _ alpha: CGFloat) {
        return self.shadow((x, y, blur, spread, color, alpha))
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


