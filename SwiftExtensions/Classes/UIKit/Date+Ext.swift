//
//  Date+Ext.swift
//  SwiftExtensions
//
//  Created by qiupeng on 2019/6/10.
//

import Foundation

extension Date: QPNamespaceable {}

public extension QPNamespace where T == Date {
    
    var year: Int {
        return Calendar.current.component(.year, from: self.value)
    }
    
    var month: Int {
        return Calendar.current.component(.month, from: self.value)
    }
    
    var day: Int {
        return Calendar.current.component(.day, from: self.value)
    }
    
    var hour: Int {
        return Calendar.current.component(.hour, from: self.value)
    }
    
    var minute: Int {
        return Calendar.current.component(.minute, from: self.value)
    }
    
    var second: Int {
        return Calendar.current.component(.second, from: self.value)
    }
    
    /// 1 means Sunday
    var weekday: Int {
        return Calendar.current.component(.weekday, from: self.value)
    }
}
