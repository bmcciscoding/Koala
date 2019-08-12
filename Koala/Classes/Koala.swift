//
//  Koala.swift
//  Pods-Koala_Example
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public protocol KoalaNamespaceable {
    
    associatedtype Koala
    
    var kl: Koala { get }
    
    static var kl: Koala.Type { get }
    
}


public extension KoalaNamespaceable {
    
    var kl: KoalaNamespace<Self> {
        return KoalaNamespace.init(value: self)
    }
    
    static var kl: KoalaNamespace<Self>.Type {
        return KoalaNamespace.self
    }
    
}


public struct KoalaNamespace<T> {
    
    public let value: T 
    
    public init(value: T) {
        self.value = value
    }
        
}

extension NSObject: KoalaNamespaceable {}
