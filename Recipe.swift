//
//  Recipe.swift
//  Recepies
//
//  Created by Isiah Parra on 5/16/22.
//

import Foundation
class Recipe: Codable {
    let id: UUID
    var title: String
    var description: String
    var calories: Int?
    var cookTime: Int?
    //MARK: DAY2
    var isFavorite: Bool
    
    init (id: UUID = UUID(), title: String, description: String, calories: Int?, cookTime: Int?, isFavorite: Bool = false) {
    self.title = title
    self.calories = calories
    self.description = description
    self.cookTime = cookTime
        self.id = id
        self.isFavorite = isFavorite
    }
}// End of class
extension Recipe: Equatable {
    static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}
