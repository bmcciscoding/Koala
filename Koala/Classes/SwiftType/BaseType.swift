//
//  BaseType.swift
//  Koala
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

// MARK: - Int
extension Int: QPNamespaceable {}

public extension QPNamespace where T == Int {
    
    var string: String {
        return String(self.value)
    }
    
    var double: Double {
        return Double(self.value)
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self.value)
    }
}

// MARK: - Double
extension Double: QPNamespaceable {}

public extension QPNamespace where T == Double {
    
    var int: Int {
        return Int(self.value)
    }
    
    var string: String {
        return String(self.value)
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self.value)
    }
}


// MARK: - String
extension String: QPNamespaceable {}

public extension QPNamespace where T == String {
    
    var int: Int {
        return Int(self.value)!
    }
    
    var double: Double {
        return Double(self.value)!
    }
    
    var cgFloat: CGFloat {
        return self.double.qp.cgFloat
    }
}

public extension QPNamespace where T == String {
    
    subscript(at: Int) -> String {
        let str = self.value
        let index = str.index(str.startIndex, offsetBy: at)
        let c = str[index]
        return String.init(c)
    }
}



