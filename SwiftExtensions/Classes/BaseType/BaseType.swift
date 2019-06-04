//
//  BaseType.swift
//  SwiftExtensions
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public extension QPNamespace where T == Int {
    
    var string: String {
        return String(self.value)
    }
}

public extension Int {
    var string: String {
        return String(self)
    }
}
