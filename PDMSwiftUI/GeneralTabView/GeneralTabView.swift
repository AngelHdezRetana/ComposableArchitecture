//
//  GeneralTabView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/23/20.
//

import SwiftUI

struct GeneralTabView: View {
    
    var body: some View {
        NavigationView {
            TabView {
                MenuView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                Text("Bell View")
                    .tabItem {
                        Image(systemName: "bell.fill")
                    }
                Text("iPhone View")
                    .tabItem {
                        Image(systemName: "iphone.homebutton")
                    }
                Text("Calendar View")
                    .tabItem {
                        Image(systemName: "calendar")
                    }
                Text("Message View")
                    .tabItem {
                        Image(systemName: "message.fill")
                    }
            }
            .navigationBarTitle(Text("Menu"))
        }
    }
}

struct GeneralTabView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralTabView()
    }
}
