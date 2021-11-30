//
//  IngredientItem.swift
//  Reciplease
//
//  Created by Kyphun Lepeule on 30/11/2021.
//

import Foundation

struct IngredientItem {
    var id = UUID()
    var title = ""
}

extension IngredientItem {
    static func getFakeData () -> [IngredientItem] {
        return [
            IngredientItem(title: "- Apple"),
            IngredientItem(title: "- Tomatoes"),
            IngredientItem(title: "- Curry"),
            IngredientItem(title: "- Chicken")
        ]
    }
}
