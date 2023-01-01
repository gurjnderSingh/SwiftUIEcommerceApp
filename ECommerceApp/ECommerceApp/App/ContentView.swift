//
//  ContentView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 26/12/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
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
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
