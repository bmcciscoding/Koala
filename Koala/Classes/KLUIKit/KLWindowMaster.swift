//
//  KLWindowMaster.swift
//  Koala
//
//  Created by qiupeng on 2020/7/13.
//

import UIKit

public protocol KLWindowViewType where Self: UIView {
    var showBgMask: Bool { get }
    var bgMaskColor: UIColor { get }
    func onHide()
}

public extension KLWindowViewType {
    var bgMaskColor: UIColor {
        return UIColor.kl.rgba("#000000", 0.5)
    }
}

public class KLWindowMaster {
    
    var mask: UIView?
    var contentView: KLWindowViewType?
    
    func show(_ contentView: KLWindowViewType) {
        self.hide()
        
        let window = UIWindow.kl.keyWindow
        let mask = UIView.init()
        mask.backgroundColor = contentView.showBgMask
            ? contentView.bgMaskColor
            : UIColor.clear
        mask.frame = window.bounds
        window.addSubview(mask)
        mask.kl.onTap { [weak self] (view, ges) in
            guard let self = self else { return }
            self.hide()
        }
        self.mask = mask
        
        mask.addSubview(contentView)
        contentView.center = mask.center
        self.contentView = contentView
    }
    
    func hide() {
        contentView?.onHide()
        mask?.removeFromSuperview()
        
    }
}
