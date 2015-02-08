//
//  ViewController.swift
//  programatic views
//
//  Created by Sonia Ourmaonva on 2/4/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.cornerRadius = 50
        //rounds the corner at 50 pts
        
        self.view.addSubview(redBox)
        //self.view refers to the main view that our view controller is associated with
        //this sets the superview to be the main view of the view controller
        
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        //this will keep the same distance at teh top and right and flexible on left and bottom
        
        //adding a label as a subview of the red box
        // 1. call the class
        // 2. set some properties
        // 3. add to subview
        
        var redBoxLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 30))
        //you can always acces the parent's properties through the .frame property
        
        redBoxLabel.text = "Hello World!"
        redBoxLabel.backgroundColor = UIColor.yellowColor()
        redBoxLabel.textColor = UIColor.redColor()
        redBoxLabel.textAlignment = .Center
        //centers the text within the label
        
        redBox.addSubview(redBoxLabel)
        // puts redBoxLabel as a subview of the redBox
        
        var actionButton = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        // declare the object (button)
        // self.view.frame.width sets the width to the whole screen on the width
        actionButton.setTitle("Click me!", forState: .Normal)
        actionButton.backgroundColor = UIColor.greenColor()
        // label for the button
        
        actionButton.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        // this sets the button to flex width
        
        actionButton.addTarget(self, action: "pressedCodedButton:", forControlEvents: .TouchUpInside)
        // action happening when the button is pressed
        self.view.addSubview(actionButton)
        //adding the button as the subview of the viewController
        
        var kittyImg = UIImage(named: "kitty.jpg")
        //this is just the reference to the actual image. now we need an image view
        
        var kittyImgView = UIImageView(image: kittyImg)
        //adds a view for the image
        
        kittyImgView.frame = CGRect(x: 50, y: 350, width: kittyImg!.size.width, height: kittyImg!.size.height)
        //setting the size of the image
        
        kittyImgView.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleTopMargin
        //
        
        self.view.addSubview(kittyImgView)
        //adding the image as a subview of main view controller
        
        }
    
    func pressedCodedButton(sender: UIButton) {
        println("Hello World!")
        // define the function called in the line above
        
        sender.removeFromSuperview()
        // removes the botton from your superview forever
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

