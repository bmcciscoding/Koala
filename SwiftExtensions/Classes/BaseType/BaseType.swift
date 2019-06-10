//
//  BaseType.swift
//  SwiftExtensions
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

extension Int: QPNamespaceable {}

public extension QPNamespace where T == Int {
    
    var string: String {
        return String(self.value)
    }
    
    var double: Double {
        return Double(self.value)
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self.double)
    }
    
}



