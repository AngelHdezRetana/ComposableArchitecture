//
//  MenuViewDomain.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 12/2/20.
//

import SwiftUI
import ComposableArchitecture

struct MainViewState {
    var menu: Menu
}

enum MainViewAction {
    case callCustomFoodView(food:Food)
}

struct MainViewEnvironment {
    
}

let reducer = Reducer<MainViewState, MainViewAction, MainViewEnvironment> { state, action, _ in
    switch action {
    case .callCustomFoodView(food:):
        
    return .none
    }
}
