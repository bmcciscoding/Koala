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
//        
        let btn = UIButton.init()
        btn.backgroundColor = UIColor.blue
        btn.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        btn.kl.onEvent(.touchUpInside) { (sender) in
            print("Xxxx")
        }
        
        let str = "012345"
        print(str.kl[0])
        print(str.kl[1])
        print(str.kl[2])
        
        self.view.addSubview(btn)
        
        let date = Date.init()
        print(date.kl.year)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



