//
//  Team.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 06/04/24.
//

import Foundation
import SwiftData

@Model
final class Team {
    @Attribute(.unique) var name: String
    var numberOfPlayers: Int
    var players: [Player]
    var score: Int
    
    init(name: String, numberOfPlayers: Int, players: [Player], score: Int) {
        self.name = name
        self.numberOfPlayers = numberOfPlayers
        self.players = players
        self.score = score
    }
}
