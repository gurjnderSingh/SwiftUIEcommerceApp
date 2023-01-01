//
//  ProductDetailView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 01/01/23.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail top part
            
            TopPartDetailView()
                .padding(.horizontal)
            //Detail bottom part
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .background(colorBackground)
    }
}
