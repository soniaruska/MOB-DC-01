//
//  ViewController.swift
//  Table Views and Scenes
//
//  Created by Sonia Ourmaonva on 1/26/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    @IBOutlet weak var swipeView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()
        initiateDoubleTapOnBox()
        
    }
    
    func initiateDoubleTapOnBox() {
        let dTap = UITapGestureRecognizer (target: self, action: "doubleTapped:")
        dTap.numberOfTapsRequired = 2
        
        self.swipeView.addGestureRecognizer(dTap)
    }
    
    
    func doubleTapped (sender: UITapGestureRecognizer) {
        UIView.animateWithDuration(1.0, animations: {
            self.swipeView.backgroundColor = UIColor.blueColor()
        })
    }
    
    func initiateRightSwipeOnRedBox() {
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        self.swipeView.addGestureRecognizer(swipeR)
    }
    
    func swipedRight(sender: UISwipeGestureRecognizer)
    {
        self.resultsLabel.text = "You swiped right!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

