//
//  MemorizeGameApp.swift
//  MemorizeGame
//
//  Created by Ruslan Ishmukhametov on 11.05.2022.
//

import SwiftUI

@main
struct MemorizeGameApp: App {
    let game = EmojiMemoryGameViewModel()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
