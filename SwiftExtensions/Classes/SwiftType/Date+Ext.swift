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
    
    var isYesterday: Bool {
        let date = self.addDays(1)
        return date.qp.isToday
    }
    
    var isToday: Bool {
        if fabs(self.value.timeIntervalSinceNow) >= 60 * 60 * 24 {
            return false
        }
        return self.day == Date.init().qp.day
    }
    
    var isTomorrow: Bool {
        let date = self.addDays(-1)
        return date.qp.isToday
    }
    
    func addDays(_ count: Int) -> Date {
        let tTime = self.value.timeIntervalSinceReferenceDate + (60 * 60 * 24) * count.qp.double
        return Date.init(timeIntervalSinceReferenceDate: tTime)
    }
    
    /// yyyy-MM-dd'T'HH:mm:ssZZZZZ
    func string(with format: String,
                timeZone: TimeZone? = nil, locale: Locale? = nil) -> String {
        let maker = DateFormatter.init()
        maker.dateFormat = format
        if timeZone != nil {
            maker.timeZone = timeZone
        }
        if locale != nil {
            maker.locale = locale
        }
        return maker.string(from: self.value)
    }
}
