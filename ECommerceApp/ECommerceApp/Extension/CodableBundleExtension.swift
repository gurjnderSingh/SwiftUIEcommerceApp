//
//  CodableBundleExtension.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 28/12/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String)-> T {
        //Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("fail to locate \(file) in bundle")
        }
        //Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("fail to locate \(file) in bundle")
        }
        //Create a Decode
        let decoder = JSONDecoder()
        
        //Create a property for the decoded data
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("fail to locate \(file) in bundle")
        }
        
        //Return the ready to use data
        return decodedData
    }
}
