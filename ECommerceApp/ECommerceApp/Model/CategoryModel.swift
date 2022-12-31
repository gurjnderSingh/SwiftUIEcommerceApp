//
//  CategoryModel.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 31/12/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name, image: String
}
