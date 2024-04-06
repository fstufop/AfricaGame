//
//  AppState.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 06/04/24.
//

import Foundation

enum Route: Hashable {
    case setupGame
    case setupTeams
    case registerWords
    case startGame
    case gameScene
    case nextTurn
    case finishedTurn
    case finalResult
    
    func isSameRoute(as route: Route) -> Bool {
        self == route
    }
}

final class AppState: ObservableObject {
    @Published var routes: [Route] = []
    
    func popToRoot() {
        routes.removeLast(routes.count)
    }
    
    func popToRoute(_ route: Route) {
        if let index = routes.firstIndex(where: { $0.isSameRoute(as: route) }) {
            routes.removeSubrange((index+1)...)
        } else {
            routes.append(route)
        }
    }
}
