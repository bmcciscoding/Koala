//
//  KLStackScrollView.swift
//  Koala
//
//  Created by QiuPeng on 2019/8/13.
//

public class KLStackScrollView: UIScrollView {
    
    public var direction: NSLayoutConstraint.Axis {
        set {
            self.stack.axis = newValue
        }
        get {
            return self.stack.axis
        }
    }
        
    let stack = UIStackView.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(self.stack)
        
    }
    
    public override var frame: CGRect {
        didSet {
            self.stack.frame = self.bounds
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override public func addSubview(_ view: UIView) {
        
        if view == self.stack {
            super.addSubview(self.stack)
            return
        }
        
        self.stack.addArrangedSubview(view)
    }
    
    override public func layoutSubviews() {
        self.stack.setNeedsLayout()
        self.stack.layoutIfNeeded()
        self.contentSize = self.stack.bounds.size
    }
    
}
