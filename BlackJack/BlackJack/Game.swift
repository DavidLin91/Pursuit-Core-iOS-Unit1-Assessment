//
//  Game.swift
//  BlackJack
//
//  Created by David Lin on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    //Instance Properties
    var deck = [Card]()
    var player = Player()
    var hitPlayer: Bool {
        return !deck.isEmpty  // not sure how to do this
    }
    
    //Computed Properties
    var hasMoreCards = Bool
    
    var randomComputerScore = Int {
        get {
            return possibleComputerScore.randomElement()
        }
    }
    
    
    //MARK: Methods of game
    
   
    
    func stopHits()
    func hitMe()
   
    func gameStatus()
    
    //draws a random number for the computer and determines the winner of the game.
    func computerVsPlayer( Score:Int, randomComputerScore:Int) -> Int {
        
    }
    
    // resetting the game if the player wishes to continue
    func newGame( ) {
        deck.
        
    }
    
}
