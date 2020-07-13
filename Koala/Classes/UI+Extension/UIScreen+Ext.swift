//
//  UIScreen+Ext.swift
//  Koala
//
//  Created by QiuPeng on 2019/8/14.
//

import Foundation

public extension KoalaNamespace where T: UIScreen {
    
    static var width: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    static var height: CGFloat {
        return UIScreen.main.bounds.height
    }
}
