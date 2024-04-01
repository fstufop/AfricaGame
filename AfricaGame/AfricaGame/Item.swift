//
//  Item.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 31/03/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
