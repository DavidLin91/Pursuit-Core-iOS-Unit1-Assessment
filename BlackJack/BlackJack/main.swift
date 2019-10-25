//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation
print("""
########  ##          ###     ######  ##    ##       ##    ###     ######  ##    ##
##     ## ##         ## ##   ##    ## ##   ##        ##   ## ##   ##    ## ##   ##
##     ## ##        ##   ##  ##       ##  ##         ##  ##   ##  ##       ##  ##
########  ##       ##     ## ##       #####          ## ##     ## ##       #####
##     ## ##       ######### ##       ##  ##   ##    ## ######### ##       ##  ##
##     ## ##       ##     ## ##    ## ##   ##  ##    ## ##     ## ##    ## ##   ##
########  ######## ##     ##  ######  ##    ##  ######  ##     ##  ######  ##    ##
""")
print("                      W E L C O M E   T O    B L A C K J A C K                   ")
print("""

""")
print("""
Disclaimer: Do you or someone you know need help with a gambling problem?
Call or text the National Problem Gambling Helpline ☎️ 800-522-4700
""")
print("""

""")


// create an instance of the game
var game = Game()
game.newGame() // resets the game
var gameOver = false
let userPrompt = "Do you want to hit or pass (hit, pass)"
let hit = "hit"
let pass = "pass"


print(userPrompt)


repeat {
 
    var userResponseHitOrPass = ""
    
    repeat{
    userResponseHitOrPass = readLine()!.lowercased()
    if userResponseHitOrPass == hit.lowercased() {
        game.hitMe()
    } else if userResponseHitOrPass == pass.lowercased() {
        print("The dealer has \(game.randomDealerScore) and you have \(game.player.score)")
        print(game.gameStatus())
    } else {
        print("Please type \"hit\" or \"pass\"")
    }
} while game.player.score < 21 || userResponseHitOrPass == pass
    
    // Option to play again
    var playAgain = String()
    repeat {
        print("Better luck next time. Would you like to try again?")
        print("Please enter yes or no")
        playAgain = readLine() ?? ""
        if playAgain == "no" {
            gameOver = true
        } else if playAgain == "yes" {
            game.newGame()
        } else {
            print("Please enter yes or no")
        }
        print()
    } while playAgain != "no" && playAgain != "yes"

}while !gameOver
  
