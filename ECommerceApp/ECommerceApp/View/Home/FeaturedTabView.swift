//
//  FeaturedTabView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 28/12/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players ) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(.page)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
