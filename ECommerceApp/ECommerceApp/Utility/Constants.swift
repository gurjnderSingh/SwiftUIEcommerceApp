//
//  Constants.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 27/12/22.
//

import SwiftUI

//Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

//Color

let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray)

//Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem.init(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
//Image
//Font
//String
//Misc
//API
