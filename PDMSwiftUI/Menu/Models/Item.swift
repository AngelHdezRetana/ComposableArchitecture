//
//  ListItem.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/21/20.
//

import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    var id = Int()
    var text: String
    var iconName: String
    var state: Bool
    var defaultStyle: Bool
}
