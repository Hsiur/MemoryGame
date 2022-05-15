//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Ruslan Ishmukhametov on 11.05.2022.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    
    @Published private var model: MemoryGameModel<String> = EmojiMemoryGameViewModel.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGameModel<String> {
        let emojis = ["👻", "💀", "💩"]
        return MemoryGameModel<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    // MARK: - Access to the Model
    var cards: [MemoryGameModel<String>.Card] {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGameModel<String>.Card) {
        model.choose(card: card)
    }
}
