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
        
        let str = "012345"
        print(str.qp[0])
        print(str.qp[1])
        print(str.qp[2])
        
        self.view.addSubview(btn)
        
        let date = Date.init()
        print(date.qp.year)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



