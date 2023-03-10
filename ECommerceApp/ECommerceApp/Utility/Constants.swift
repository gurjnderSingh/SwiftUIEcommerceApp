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
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
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

let feedback = UIImpactFeedbackGenerator(style: .medium)
//Image
//Font
//String
//Misc
//API
