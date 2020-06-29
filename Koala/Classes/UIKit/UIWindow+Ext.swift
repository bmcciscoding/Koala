//
//  UIWindow.swift
//  Koala
//
//  Created by qiupeng on 2020/6/22.
//

import Foundation

public extension KoalaNamespace where T == UIWindow {
    static var keyWindow: UIWindow {
        if let win = UIApplication.shared.keyWindow {
            return win
        }
        if let win = UIApplication.shared.delegate?.window, let w = win {
            return w
        }
        return UIApplication.shared.windows.first ?? UIWindow.init(frame: UIScreen.main.bounds)
    }
}

