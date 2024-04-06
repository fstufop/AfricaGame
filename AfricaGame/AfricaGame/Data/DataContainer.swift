//
//  DataContainer.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 06/04/24.
//

import Foundation
import SwiftData

struct DataContainer {
    static var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Game.self,
            Player.self,
            Team.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
            // TODO: Add Crashlytics
        }
    }()
}
