//
//  DefaultMenuRow.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI

struct DefaultMenuRow: View {
    var item: Item
    
    var body: some View {
        VStack {
            HStack {
                Text(item.text)
                    .frame(height: 30)
                Spacer()
            }
        }
    }
}

struct DefaultMenuRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DefaultMenuRow(item: menuData.listMenu[1].listItems[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
