//
//  UIWindow.swift
//  Koala
//
//  Created by qiupeng on 2020/6/22.
//

import Foundation

public extension KoalaNamespace where T == UIWindow {
    static var keyWindow: UIWindow {
        return UIApplication.shared.keyWindow!
    }
}

