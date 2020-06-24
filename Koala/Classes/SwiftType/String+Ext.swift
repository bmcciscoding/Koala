//
//  String+Ext.swift
//  Koala
//
//  Created by qiupeng on 2020/6/23.
//

import Foundation

public extension String {
    var base64: String? {
        return self.data(using: .utf8)?.base64EncodedString()
    }
}

public extension KoalaNamespace where T == String {
    
    var base64: String? {
        return self.value.data(using: .utf8)?.base64EncodedString()
    }
    
    subscript (i: Int) -> String {
        let idx = self.value.index(self.value.startIndex, offsetBy: i)
        let c = self.value[idx]
        return String.init(c)
    }

    subscript (bounds: Range<Int>) -> String {
        let left = self.value.index(self.value.startIndex, offsetBy: bounds.lowerBound)
        let right = self.value.index(self.value.startIndex, offsetBy: bounds.upperBound)
        let s = self.value[left...right]
        return String.init(s)
    }
}
