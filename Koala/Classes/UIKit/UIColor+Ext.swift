//
//  UIColor+Ext.swift
//  Pods-Koala_Example
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public extension KoalaNamespace where T == UIColor {
    
    static func rgba(_ hexString: String, _ alpha: CGFloat = 1.0) -> UIColor {
        var hex: UInt64 = 0
        var string = hexString
        if (string.hasPrefix("#")) {
            string.removeFirst(1)
        }
        if (string.hasSuffix("0x")) {
            string.removeFirst(2)
        }
        let scanner = Scanner.init(string: string)
        if scanner.scanHexInt64(&hex) {
            return rgba(Int(hex), alpha)
        }
        return UIColor.clear
    }
    
    static func rgba(_ hexHex: Int, _ alpha: CGFloat = 1.0) -> UIColor {
        let red = ((hexHex & 0xff0000) >> 16).kl.cgFloat / 255
        let green = ((hexHex & 0x00ff00) >> 8).kl.cgFloat / 255
        let blue = (hexHex & 0x0000ff).kl.cgFloat / 255
        return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    var invert: UIColor {
        var r: CGFloat = 0, g:CGFloat = 0, b:CGFloat = 0
        self.value.getRed(&r, green: &g, blue: &b, alpha: nil)
        return UIColor.init(red: 1-r, green: 1-g, blue: 1-g, alpha: 1)
    }
    
}
