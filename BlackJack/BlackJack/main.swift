//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

print(" W E L C O M E   T O    B L A C K J A C K")
print(" ")

// create an instance of the game
//let game = Game()
var responseLoop = true
let gameOver = false
let userPrompt = "Do you want to hit or pass (hit, pass)"
let hit = "hit"
let pass = "pass"

print(userPrompt)

repeat{    
    let userResponseHitOrPass = readLine()!.lowercased()
    if userResponseHitOrPass == hit.lowercased() {
        print("hit function where a card is added to current card")
        game.hitMe()
    } else if userResponseHitOrPass == pass.lowercased() {
        
        print("function that will choose a random number for dealer")
    } else {
        print("Please type \"hit\" or \"pass\"")
    }
    
    game.newGame()
    
}while responseLoop

