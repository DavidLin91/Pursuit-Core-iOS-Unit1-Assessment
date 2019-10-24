//
//  Suit.swift
//  BlackJack
//
//  Created by David Lin on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


// Assign the diamond case "♦️", heart case "♥️", spade "♠️" and club "♣️"
// Make sure your enum conforms to CaseIterable in order for the newDeck() method to work.
enum Suit: String, CaseIterable {
    case diamond = "♦️"
    case club = "♣️"
    case heart = "♥️"
    case spade = "♠️"
}
