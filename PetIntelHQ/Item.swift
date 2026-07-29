//
//  Item.swift
//  PetIntelHQ
//
//  Created by Troy Conte on 7/29/26.
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
