//
//  AfricaGameApp.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 31/03/24.
//

import SwiftUI
import SwiftData

@main
struct AfricaGameApp: App {
    @StateObject var appState = AppState()
    let sharedModelContainer = DataContainer.sharedModelContainer
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(appState)
        .modelContainer(sharedModelContainer)
    }
}
