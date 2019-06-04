//
//  SwiftExtensions.swift
//  Pods-SwiftExtensions_Example
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public protocol QPNamespaceable {
    
    associatedtype QPValue
    
    var qp: QPValue { get }
    
    static var qp: QPValue.Type { get }
    
}


public extension QPNamespaceable {
    
    var qp: QPNamespace<Self> {
        return QPNamespace.init(value: self)
    }
    
    static var qp: QPNamespace<Self>.Type {
        return QPNamespace.self
    }
    
}

public protocol QPNamespaceProtocl {
    
    associatedtype QPValue
    
    var value: QPValue { get }
    
    init(value: QPValue)
}


public struct QPNamespace<T>: QPNamespaceProtocl {
    
    public let value: T 
    
    public init(value: T) {
        self.value = value
    }
        
}

extension NSObject: QPNamespaceable {}

extension Int: QPNamespaceable {}
