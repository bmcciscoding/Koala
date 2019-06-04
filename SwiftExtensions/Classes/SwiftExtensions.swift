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


public struct QPNamespace<T>: QPNamespaceable {
    
    let value: T 
    
    init(value: T) {
        self.value = value
    }
    
    public var qp: T {
        return self.value
    }
    
    public static var qp: T.Type {
        return T.self
    }
    
    public typealias QPValue = T
        
}

extension NSObject: QPNamespaceable {}





