//
//  FaceCard.swift
//  BlackJack
//
//  Created by David Lin on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

//1. Create a new Swift file called FaceCard, create an enum of the same name that has a jack, queen and king case.
//  Make the raw value a String.

// Make sure your enum conforms to CaseIterable in order for the newDeck() method to work.
enum FaceCard: String, CaseIterable {
    case jack = "🎃"
    case queen = "👸"
    case king = "🤴"
}
