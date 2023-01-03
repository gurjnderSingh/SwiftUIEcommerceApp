//
//  ProductDetailView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 01/01/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
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
                .zIndex(1)
            //Detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // Rating + Size
                RatingSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                // Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add To Car
                AddToCartDetailView()
                    .padding(.top, 4)
                    .padding(.bottom, 10)
                Spacer()
            }
            .padding()
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
            .background(colorBackground)
    }
}
