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
