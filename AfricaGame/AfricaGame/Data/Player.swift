//
//  Player.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 06/04/24.
//

import Foundation
import SwiftData

@Model
final class Player {
    var name: String
    var words: [String]
    var score: Int
    
    init(name: String, words: [String], score: Int) {
        self.name = name
        self.words = words
        self.score = score
    }
}
