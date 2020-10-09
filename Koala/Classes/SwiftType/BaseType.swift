//
//  BaseType.swift
//  Koala
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public extension Optional {
    var isNil: Bool {
        switch self {
            case .none: return true
            case .some(_): return false
        }
    }
    
    var isNotNil: Bool {
        return !self.isNil
    }
}

// MARK: - Int
extension Int: KoalaNamespaceable {}

public extension KoalaNamespace where T == Int {
    
    var string: String {
        return String(self.value)
    }
    
    var double: Double {
        return Double(self.value)
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self.value)
    }

    var int64: Int64 {
        return Int64(self.value)
    }
}

public extension KoalaNamespace where T == Int {

    var kb: String {
        let formatter = ByteCountFormatter.init()
        formatter.allowedUnits = [.useKB]
        return formatter.string(fromByteCount: self.int64)
    }
}

// MARK: - Double
extension Double: KoalaNamespaceable {}

public extension KoalaNamespace where T == Double {
    
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
extension String: KoalaNamespaceable {}

public extension KoalaNamespace where T == String {
    
    var int: Int {
        return Int(self.value)!
    }
    
    var double: Double {
        return Double(self.value)!
    }
    
    var cgFloat: CGFloat {
        return self.double.kl.cgFloat
    }
}



