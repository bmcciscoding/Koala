//
//  UIWindow.swift
//  Koala
//
//  Created by qiupeng on 2020/6/22.
//

import Foundation

public extension UIWindow {
    class var keyWindow: UIWindow {
        return UIApplication.shared.keyWindow!
    }
}

public extension UIViewController {
    
    func present(view: UIView) {
        let vc = UIViewController()
        vc.view.addSubview(view)
        self.present(vc, animated: true, completion: nil)
    }
    
}

public extension String {
    var base64: String {
        if let data = Data.init(base64Encoded: self) {
            let string = String.init(data: data, encoding: .utf8) ?? ""
            return string
        }
        return ""
    }
}
