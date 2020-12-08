//
//  SortView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/23/20.
//

import SwiftUI

struct SortView: View {
    @State var sortMenu = sortList
    
    var body: some View {
        VStack {
            Spacer()
            List {
                ForEach(sortMenu) { sortElement in
                    Text(sortElement.text)
                }
            }
        }
    }
}

struct SortView_Previews: PreviewProvider {
    static var previews: some View {
        SortView()
    }
}
