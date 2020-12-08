//
//  CustomFoodsDomain.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 12/4/20.
//

import SwiftUI
import ComposableArchitecture
import Combine

struct CustomFoodsState: Equatable {
    var foodList: [Food]
    var newCustomFoodsState = NewCustomFoodState()
    var name: String = ""
    var carbs: String = ""
}

enum CustomFoodsAction: Equatable {
    case removeFoodFromList(Food)
    case newCustomFoodsAction(NewCustomFoodAction)
    case addNewCustomFoodToList(Food)
    case food(index: Int, action: FoodAction)
    case nameTextFieldChanged(String)
    case carbsTextFieldChanged(String)
    case clearTextValues
}

struct CustomFoodsEnvironment {
    
}

let customFoodReducer = Reducer<CustomFoodsState, CustomFoodsAction, CustomFoodsEnvironment>.combine(
    newCustomFoodReducer
        .pullback(state: \.newCustomFoodsState,
                  action: /CustomFoodsAction.newCustomFoodsAction,
                  environment: { _ in NewCustomFoodEnvironment()}
                ),
    foodRweducer.forEach(
        state: \CustomFoodsState.foodList,
        action: /CustomFoodsAction.food(index:action:),
        environment: { _ in FoodEnvironment()
            
        }),
    .init { state, action, _ in
        switch action {
        case .removeFoodFromList(let food):
            state.foodList = state.foodList.filter() {$0 != food}
            return .none
        case .addNewCustomFoodToList(let food):
            if !food.name.isEmpty && !food.carbs.isEmpty {
                state.foodList.append(food)
                return Effect(value: CustomFoodsAction.clearTextValues)
            }
            return .none
        case .newCustomFoodsAction(_):
            return .none
        case .food(index:action:):
            return .none
        case .nameTextFieldChanged(let text):
            state.name = text
            return .none
        case .carbsTextFieldChanged(let text):
            state.carbs = text
            return .none
        case .clearTextValues:
            state.name = ""
            state.carbs = ""
            return .none
        }
    }
)
.debug()
