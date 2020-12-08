//
//  FormView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 12/7/20.
//

import SwiftUI
import ComposableArchitecture

struct FormView: View {
    let store: Store<CustomFoodsState, CustomFoodsAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            Text("FOOD NAME")
                .modifier(HeaderTextView())
            TextField(
                "enter food name",
                text: viewStore.binding(
                    get: \.name,
                    send: CustomFoodsAction.nameTextFieldChanged
                )
            )
            .textFieldStyle(TextFieldView())
            Text("CARBS (g)")
                .modifier(HeaderTextView())
            TextField(
                "enter carbs value",
                text: viewStore.binding(
                    get: \.carbs,
                    send:
                        CustomFoodsAction.carbsTextFieldChanged
                )
            )
            .textFieldStyle(TextFieldView())
            .keyboardType(.decimalPad)
        }
    }
}
