//
//  UIColor+Ext.swift
//  Pods-Koala_Example
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public extension KoalaNamespace where T == UIColor {
    
    static func rgba(_ hexValue: Int, _ alpha: CGFloat = 1.0) -> UIColor {
        let red = ((hexValue & 0xff0000) >> 16).kl.cgFloat / 255
        let green = ((hexValue & 0xff00) >> 8).kl.cgFloat / 255
        let blue = (hexValue & 0xff).kl.cgFloat / 255
        return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}
