//
//  UIViewController+Ext.swift
//  Koala
//
//  Created by qiupeng on 2020/6/23.
//

import Foundation

public extension UIViewController {
    
    func present(view: UIView) {
        let vc = UIViewController()
        vc.view.addSubview(view)
        self.present(vc, animated: true, completion: nil)
    }
    
}
