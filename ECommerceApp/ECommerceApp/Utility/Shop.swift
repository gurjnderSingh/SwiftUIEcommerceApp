//
//  Shop.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 02/01/23.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false // any changes to this property will trigger view reload
    @Published var selectedProduct: Product? = nil
}
