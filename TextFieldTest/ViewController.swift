//
//  ViewController.swift
//  TextFieldTest
//
//  Created by Adriana Gonzalez on 2/18/16.
//  Copyright © 2016 Adriana Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        self.view.backgroundColor = BLACK_COLOR
        super.viewDidLoad()
        
        
        let textField = BaseTextField()
        textField.frame = (CGRectMake(40, 40, self.view.frame.size.width-80, 60))
        textField.placeholder = "Username"
        //textField.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(textField)
        
        let textField2 = BaseTextField()
        textField2.frame = (CGRectMake(40, 100, self.view.frame.size.width-80, 60))
        textField2.placeholder = "Password"
        self.view.addSubview(textField2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

