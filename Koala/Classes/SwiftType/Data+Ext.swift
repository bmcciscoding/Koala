//
//  Data+Ext.swift
//  Koala
//
//  Created by qiupeng on 2020/6/22.
//

import Foundation

public extension Data {
    var string: String {
        return String.init(data: self, encoding: .utf8) ?? "no string"
    }
}


