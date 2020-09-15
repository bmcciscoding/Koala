//
//  ViewController.swift
//  Koala
//
//  Created by bmcciscoding@gmail.com on 06/04/2019.
//  Copyright (c) 2019 bmcciscoding@gmail.com. All rights reserved.
//

import UIKit
import Koala

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.kl.rgba(0x333333)

        let v = UIView.kl.new
        v.frame = CGRect.init(x: 20, y: 40, width: 20, height: 20)
        v.layer.kl.outBorderColor = UIColor.systemRed.cgColor
        v.layer.kl.outBorderWidth = 5
        self.view.addSubview(v)
        
        let v2 = UIView.kl.new
        v2.frame = CGRect.init(x: 60, y: 40, width: 20, height: 20)
        v2.layer.borderColor = UIColor.systemRed.cgColor
        v2.layer.borderWidth = 5
        self.view.addSubview(v2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



