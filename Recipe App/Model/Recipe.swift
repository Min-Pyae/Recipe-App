//
//  Recipe.swift
//  Recipe App
//
//  Created by Chris Min on 31/01/2024.
//

import Foundation

struct Recipe: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var ingredients: [String]
    var instructions: String
    var imageName: String
}
