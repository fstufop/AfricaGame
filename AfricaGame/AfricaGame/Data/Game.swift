//
//  Game.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 31/03/24.
//

import Foundation
import SwiftData

@Model
final class Game {
    let id: UUID = UUID()
    var teams: [Team]
    var currentTurn: Turn
    var currentPlayer: Player
    var currentPlayerTime: TimeInterval
    var nextPlayer: Player
    var turnWords: [String]
    var gameWords: [String]
    var currentTeam: Team
    
    init(
        teams: [Team],
        currentTurn: Turn,
        currentPlayer: Player,
        currentPlayerTime: TimeInterval,
        nextPlayer: Player,
        turnWords: [String],
        gameWords: [String],
        currentTeam: Team
    ) {
        self.teams = teams
        self.currentTurn = currentTurn
        self.currentPlayer = currentPlayer
        self.currentPlayerTime = currentPlayerTime
        self.nextPlayer = nextPlayer
        self.turnWords = turnWords
        self.gameWords = gameWords
        self.currentTeam = currentTeam
    }
}
