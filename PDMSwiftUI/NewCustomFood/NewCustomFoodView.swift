//
//  AddCustomFoodView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI
import ComposableArchitecture
var alertTitle = ""
var alertMessage = ""

struct NewCustomFoodView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let store: Store<CustomFoodsState, CustomFoodsAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                FormView(store: store)
                Spacer()
                Button(action: {
                    viewStore.send(.addNewCustomFoodToList(
                                Food(
                                    id: UUID(),
                                    name: viewStore.name,
                                    carbs: viewStore.carbs
                                )
                            )
                    )
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Save to Custom Foods")
                })
                .buttonStyle(ButtonView())
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle(Text("Add Custom Food"))
    }
}
