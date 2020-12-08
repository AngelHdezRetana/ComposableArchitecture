//
//  ButtonView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI

struct ButtonView: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            .foregroundColor(.white)
            .background(Color(UIColor.primaryPurple))
            .cornerRadius(9)
            .shadow(color: .black, radius: 3, x: 0.0, y: 2.0)
            .padding([.leading, .trailing, .bottom], 20)
    }
}
