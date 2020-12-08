//
//  CustomFoodRow.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI
import ComposableArchitecture

struct CustomFoodRow: View {
    var store: Store<Food, FoodAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            HStack {
                Text(viewStore.name)
                Spacer()
                Text("\(viewStore.carbs) g")
                    .foregroundColor(Color(red: 91/255, green: 52/255, blue: 185/255))
            }
        }
    }
}
