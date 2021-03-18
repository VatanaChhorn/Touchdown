//
//  Constant.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 08/01/2021.
//

import Foundation
import SwiftUI

// DATA

let players : [Player] = Bundle.main.decode("player.json")
let category: [CategoryModel] = Bundle.main.decode("category.json")

// Color

let colorBackground: Color = Color("ColorBackground")
let colorGray : Color = Color(UIColor.systemGray4)

// Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API

// IMAGE

// FONT

// STRING

// MISC
