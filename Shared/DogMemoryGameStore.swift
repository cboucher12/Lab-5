//
//  MemStore.swift
//  Lab5
//
//  Group 4
//  Lab 5
//  Les Poltrack and Conrad Boucher
//  November 27

import Foundation
import SwiftUI

class DogMemoryGameStore: ObservableObject {
    
    static let numPairs = 6
    
    @Published private var model: MemoryGame = CreateMemoryGame()
    
    static func CreateMemoryGame() -> MemoryGame {
        return MemoryGame(numberOfPairsOfCards: numPairs, contentFactory: makeContent)
    }
    
    static func makeContent(index: Int) -> String {
        let dogImages = ["airedale_terrier", "american_foxhound","dutch_shepherd",
                       "havanese", "labrador_puppy", "leonberger",
                       "mudi", "norwegian_lundehund", "old_labrador",
                       "pharaoh_hound", "scottish_terrier", "tosa"
                        ]
        return dogImages[index]
    }
    
    var cards: Array<MemoryGame.Card> {
        model.cards
    }
    
    var totalPairs: Int {
        model.numberOfPairs
    }
    
    var pairsMatched: Int {
        model.pairsMatched
    }
    
    var foundMatch: Bool {
        model.foundMatch
    }
    
    var score: Int {
        model.score
    }
    
    func choose(_ card: MemoryGame.Card) {
       model.chooseCard(card)
    }
}
