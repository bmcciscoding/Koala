//
//  ViewController.swift
//  SwiftExtensions
//
//  Created by bmcciscoding@gmail.com on 06/04/2019.
//  Copyright (c) 2019 bmcciscoding@gmail.com. All rights reserved.
//

import UIKit
import SwiftExtensions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.qp.rgba(0x333333)
//        
        let btn = UIButton.init()
        btn.backgroundColor = UIColor.blue
        btn.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        btn.qp.addEvent(.touchUpInside) { (sender) in
            print("Xxxx")
        }
        
        self.view.addSubview(btn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



