//
//  HeaderTextView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/23/20.
//

import SwiftUI

struct HeaderTextView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.leading], 20)
            .padding([.top], 10)
            .font(Font(UIFont.textFieldHeader))
    }
}
