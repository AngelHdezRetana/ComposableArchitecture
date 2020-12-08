//
//  ListMenu.swift
//  PDMSwiftUI
//
//  Created by Angel Hernández on 11/21/20.
//

import SwiftUI

struct ListMenu: Hashable, Codable, Identifiable {
    var id = Int()
    var title: String
    var listItems: [Item]
}
