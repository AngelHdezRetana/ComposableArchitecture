//
//  MenuView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI
import ComposableArchitecture

struct MenuView: View {
//    @StateObject private var foodData = FoodData()
    var menu = menuData
    
    
    var body: some View {
        List {
            ForEach(menu.listMenu) { listMenu in
                Section(header: Text(listMenu.title)
                ) {
                    ForEach(listMenu.listItems) { item in
                        if !item.defaultStyle {
                            ActionRow(item: item)
                        } else {
                            NavigationLink(
                                destination: CustomFoodsView(
                                    store: Store(
                                        initialState: CustomFoodsState(
                                            foodList: []),
                                        reducer: customFoodReducer,
                                        environment: CustomFoodsEnvironment()
                                    )
                                )
                            ) {
                                DefaultMenuRow(item: item)
                            }
                        }
                    }
                }
            }
            .accentColor(.black)
        }
        .listStyle(GroupedListStyle())
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menu: menuData)
    }
}
