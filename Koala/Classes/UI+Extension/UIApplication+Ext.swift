//
//  UIApplication+Ext.swift
//  Pods-Koala_Example
//
//  Created by QiuPeng on 2019/6/4.
//

import Foundation

public extension KoalaNamespace where T == UIApplication {
    
    var documentsURL: URL? {
        return FileManager.default.urls(for: .userDirectory, in: .userDomainMask).first
    }
    
    var cacheURL: URL? {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first 
    }
    
    var preferencesURL: URL? {
        return self.cacheURL?.appendingPathComponent("Preferences", isDirectory: true)
    }
    
    var libraryURL: URL? {
        return FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first 
    }
    
    var tmpPath: String {
        return NSTemporaryDirectory()
    }    
}

