//
//  HeaderDetailView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 01/01/23.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading) {
           Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
    }
}
