//
//  CardGame.swift
//  BlackJackGame2
//
//  Created by Sonia Ourmaonva on 1/25/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import Foundation


protocol BlackJack {
    // Require a deal method
    // Require a first hand method
}

class CardGame: BlackJack {
    var cardOne = 0
    var cardTwo = 0
    var newCard = 0
    var playerSum = 0
    var dealerSum = 0
    
    func initialCards()  {
        self.cardOne = Int(arc4random_uniform(10)+1)
        self.cardTwo = Int(arc4random_uniform(10)+1)
        self.playerSum = self.cardOne + self.cardTwo
        self.dealerSum = Int(arc4random_uniform(9)+12)
        
    }
    

    func deal() {
        self.newCard = Int(arc4random_uniform(10)+1)
        self.playerSum = self.newCard + self.playerSum
    }
}
















