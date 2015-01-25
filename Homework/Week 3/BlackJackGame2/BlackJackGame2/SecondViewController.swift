//
//  SecondViewController.swift
//  BlackJackGame2
//
//  Created by Sonia Ourmaonva on 1/25/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var gameRules: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameRules.text = "1. Tap twice on green box to get dealt another card. \n2. Swipe right to stop dealing cards and compare your score to CPU's \n3. If your score goes above 21, you lose."

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backToGame(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
