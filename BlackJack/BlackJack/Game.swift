//
//  Game.swift
//  BlackJack
//
//  Created by David Lin on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    
    //INSTANCE PROPERTIES
    var deck = [Card]()
    var player = Player(score: 0, cards: [Card](), playerName: "Player")
    var hitPlayer = Bool() 
    
    //COMPUTED PROPERTIES
    var hasMoreCards: Bool {
        return !deck.isEmpty
    } // if game ever runs out of cards, will return false
    
    var randomDealerScore: Int {
        let scoreRange = 17...21
        return scoreRange.randomElement()!
    } //draws a random number for the computer and determines the winner of the game.
    
    //MARK: GAME METHOD
     func newGame() {
        player.cards.removeAll()
        deck = Card.newDeck(aceValue: 1) // creates deck
        player.score = 0
    }     // resetting the game if the player wishes to continue
    
    // Do i need a stopHit function?
    
    func hitMe() {
        if hasMoreCards == true { // if there are cards left in the deck
            deck = deck.shuffled()
            let newRandomCard = deck.popLast()! //pulls card from deck
            player.cards.append(newRandomCard)// adds new card to hand
            player.score += newRandomCard.value // adds all card values together
            print("score: \(player.score)")
        } // hit me func to pick up new card and adds to player's total
    }
    func gameStatus() {
        //define win or lose
        if player.score == 21 {
            print("BLACKJACK! YOU WIN")
        } else if player.score > randomDealerScore {
            print("You scored higher than the dealer! You win!")
        } else {
            print("You lose! Try again!")
        }
    } // status win or lose
}
