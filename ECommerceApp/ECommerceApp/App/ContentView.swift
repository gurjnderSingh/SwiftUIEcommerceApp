//
//  ContentView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 26/12/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                        ScrollView(.vertical, showsIndicators: true) {
                            VStack(spacing: 0) {
                                FeaturedTabView()
                                    .padding(.vertical, 10)
                                    .frame(height: UIScreen.main.bounds.width / 1.475)
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout) {
                                        ForEach(products) { product in
                                                ProductItemView(product: product)
                                                .onTapGesture {
                                                    feedback.impactOccurred()
                                                    withAnimation(.easeOut) {
                                                        shop.selectedProduct = product
                                                        shop.showingProduct = true
                                                    }
                                                }
                                        } //: Loop
                                }//: Grid
                                .padding(15)
                                
                                TitleView(title: "Brand")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }
                        } //: ScrollView
                } //: VStack
                .background(colorBackground)
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
