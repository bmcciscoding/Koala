//
//  UIDevice+Ext.swift
//  Koala
//
//  Created by QiuPeng on 2019/8/14.
//

import Foundation

extension KoalaNamespace where T: UIDevice {
    
    static var isiPhoneXModel: Bool {
        var name = "simulatar"
        if let simulator = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] { 
            name = simulator
        } else {
            var sysinfo = utsname()
            uname(&sysinfo) // ignore return value
            name = String(bytes: Data(bytes: &sysinfo.machine, count: Int(_SYS_NAMELEN)), encoding: .ascii)!.trimmingCharacters(in: .controlCharacters)        
        }
        switch name {
        case "iPhone10,3", "iPhone10,6", "iPhone11,2", "iPhone11,4", "iPhone11,6", "iPhone11,8":
            return true
        default:
            return false
        }
    }
    
    
}
