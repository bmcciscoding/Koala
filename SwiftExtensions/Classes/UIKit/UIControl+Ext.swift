//
//  UIControl+Ext.swift
//  SwiftExtensions
//
//  Created by QiuPeng on 2019/6/5.
//

import Foundation

public extension QPNamespace where T: UIControl {
    
    func addEvent(_ event: UIControlEvents, 
                  _ completeHandler: @escaping UIControlEventCompletionHandler) {
        
        let target = UIControlTarget.init(event: event, completionHandler: completeHandler)
        self.value.addTarget(target, 
                             action: #selector(target.onTargetEvent(sender:)), 
                             for: event)
        self.value.targets?.add(target)
    }
    
}

extension UIControl {
    
    static var allControlTargetsKey = "com.qp.allControlTargetsKey"
    
    var targets: NSMutableArray? {
        var arr = objc_getAssociatedObject(self, &UIControl.allControlTargetsKey) as? NSMutableArray
        if arr == nil {
            arr = NSMutableArray.init()
            objc_setAssociatedObject(self, &UIControl.allControlTargetsKey, arr, .OBJC_ASSOCIATION_RETAIN)
        }
        return arr
        
    }
        
}

public typealias UIControlEventCompletionHandler = (UIControl) -> Void


class UIControlTarget {
    
    var event: UIControlEvents
    
    var completionHandler: UIControlEventCompletionHandler
    
    init(event: UIControlEvents,
         completionHandler: @escaping UIControlEventCompletionHandler) {
        self.event = event
        self.completionHandler = completionHandler
    }
    
    @objc func onTargetEvent(sender: UIControl) {
        self.completionHandler(sender)
    }
    
}
