//
//  AddCustomFoodDomain.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 12/3/20.
//

import SwiftUI
import ComposableArchitecture

struct NewCustomFoodState: Equatable {
    var showAlert = false
}

enum NewCustomFoodAction: Equatable {
    case addCustomFoodButtonTapped
}

struct NewCustomFoodEnvironment {
    
}

let newCustomFoodReducer = Reducer<NewCustomFoodState, NewCustomFoodAction, NewCustomFoodEnvironment> { state, action, environment in
    switch action {
        case .addCustomFoodButtonTapped:
            state.showAlert.toggle()
            return .none
    }
}
.debug()
