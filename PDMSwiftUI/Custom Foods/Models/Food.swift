//
//  Food.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI
import ComposableArchitecture

struct Food: Identifiable, Equatable {
    var id: UUID
    var name: String = ""
    var carbs: String = ""
}

enum FoodAction{
    case deleteRow
}

struct FoodEnvironment {
    
}

let foodRweducer = Reducer<Food, FoodAction, FoodEnvironment> {
    state, action, environment in
    switch action{
    case .deleteRow:
        return .none
    }
}
