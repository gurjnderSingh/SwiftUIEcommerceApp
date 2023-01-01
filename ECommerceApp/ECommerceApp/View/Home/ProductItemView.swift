//
//  ProductItemVie.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 01/01/23.
//

import SwiftUI

struct ProductItemView: View {
    
    var product: Product
    
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            //Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: Zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //Price
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        } //: VStack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 200))
            .padding()
            .background(colorGray)
    }
}
