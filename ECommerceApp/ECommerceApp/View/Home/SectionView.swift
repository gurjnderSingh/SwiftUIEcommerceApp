//
//  SectionView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 31/12/22.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(.degrees(rotateClockwise ? 90 : -90))
            Spacer()
        } //: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
