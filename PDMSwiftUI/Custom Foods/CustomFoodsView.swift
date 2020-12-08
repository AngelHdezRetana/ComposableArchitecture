//
//  CustomFoodsView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/21/20.
//

import SwiftUI
import ComposableArchitecture

struct CustomFoodsView: View {

    @State var showSortView = false
    let store: Store<CustomFoodsState, CustomFoodsAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                ForEachStore(
                    self.store.scope(
                        state: \.foodList,
                        action: CustomFoodsAction.food(index:action:)),
                    content: CustomFoodRow.init(store:)
                )
                .padding()
                Spacer()
                
                NavigationLink(
                    destination: NewCustomFoodView(store: store)
                ) {
                    Text("Add Custom Food")
                }
                .buttonStyle(ButtonView())
                .navigationBarTitle(Text("Add Custom Foods"))
                .navigationBarItems(trailing:
                    Button(action: {
                        self.showSortView.toggle()
                    }) {
                        Text("")
                    }.sheet(isPresented: $showSortView) {
                        SortView()
                    }
                )
            }
        }
    }
}

struct CustomFoodsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomFoodsView(store: Store(initialState: CustomFoodsState(foodList: [
                Food(
                    id: UUID(),
                    name: "Pizza",
                    carbs: "250"
                )
        ]), reducer: customFoodReducer, environment: CustomFoodsEnvironment()))
    }
}
