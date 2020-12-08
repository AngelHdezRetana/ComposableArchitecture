//
//  TextFieldView.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/22/20.
//

import SwiftUI

struct TextFieldView: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .font(.largeTitle)
            .background(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.clear)
                    ).padding()
    }
}
