//
//  ViewController.swift
//  BlackJackGame2
//
//  Created by Sonia Ourmaonva on 1/25/15.
//  Copyright (c) 2015 Sonia Ourmaonva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var dealerCardsValue: UILabel! {
//        self.dealerCardsValue.text = "Dealer has \(self.game.dealerSum)"
//    }

    @IBOutlet weak var statusLabel: UILabel!
    var game = CardGame()
    

    
    
    @IBAction func doubleTapToDealMoreCards(sender: UITapGestureRecognizer) {
        if game.playerSum < 22 {
            self.game.deal()
            self.statusLabel.text = "Your current score is \(self.game.playerSum)"
            if self.game.playerSum == 21 {
                self.statusLabel.text = "BlackJack! You win!"
            }else {
                self.statusLabel.text = "Your current score is \(self.game.playerSum)"
            }
            
        }
        if game.playerSum > 21 {
            self.statusLabel.text = "You went over, you lose!"
        }
        
        
    }
    
    
    @IBAction func swipeRightToEndGame(sender: UISwipeGestureRecognizer) {
        if self.game.playerSum > self.game.dealerSum && self.game.playerSum < 22 {
            self.statusLabel.text = "You win! Dealer value is \(self.game.dealerSum)."
        }
        else {
            self.statusLabel.text = "You lose! Dealer valuer is \(self.game.dealerSum)."
        }
    }
    

    
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.game.initialCards()
        // Do any additional setup after loading the view, typically from a nib.
        self.statusLabel.text = "Your first cards are \(self.game.cardOne) and \(self.game.cardTwo)"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

