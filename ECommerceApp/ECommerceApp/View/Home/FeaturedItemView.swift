//
//  FeaturedItemView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 28/12/22.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - Properties
    let player: Player
    
    //MARK: - Body
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
