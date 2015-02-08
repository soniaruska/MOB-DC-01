//
//  ViewController.swift
//  login class exercise
//
//  Created by Sonia Ourmaonva on 2/4/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var titleLabel = UILabel(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50))
        titleLabel.backgroundColor = UIColor.grayColor()
        titleLabel.text = "Hello!"
        titleLabel.textColor = UIColor.grayColor()
        titleLabel.textAlignment = .Center
        
        self.view.addSubview(titleLabel)


        var usernameText = UITextField(frame: CGRect(x: 0, y: 150, width: self.view.frame.width, height: 50))
        usernameText.backgroundColor = UIColor.grayColor()
        usernameText.placeholder = "username"
        usernameText.textColor = UIColor.whiteColor()
        
        self.view.addSubview(usernameText)

        
        var passwordText = UITextField(frame: CGRect(x: 0, y: 250, width: self.view.frame.width, height: 50))
        passwordText.placeholder = "password"
        passwordText.textColor = UIColor.whiteColor()
        passwordText.secureTextEntry = true
        passwordText.backgroundColor = UIColor.grayColor()
        self.view.addSubview(passwordText)

        
        var loginBtn = UIButton(frame: CGRect(x: 50, y: 350, width: self.view.frame.width/2, height: 50))
        loginBtn.backgroundColor = UIColor.redColor()
        loginBtn.setTitle("login", forState: .Normal)
        self.view.addSubview(loginBtn)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

