//
//  ActionRow.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/21/20.
//

import SwiftUI

struct ActionRow: View {
    var item: Item
    
    var body: some View {
        VStack {
            HStack {
                Image(item.iconName)
                    .resizable()
                    .frame(width: 25, height: 25)
                Text(item.text)
                Spacer()
            }
        }
    }
}

struct ActionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActionRow(item: menuData.listMenu[0].listItems[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
