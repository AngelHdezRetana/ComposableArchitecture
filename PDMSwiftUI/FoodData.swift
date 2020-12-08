//
//  FoodData.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI
import Combine

class FoodData: ObservableObject {
    @Published var customFoods: [Food] = []
    
    func addFoodToCustomFoods(food: Food) -> Void {
        customFoods.append(food)
    }
}
