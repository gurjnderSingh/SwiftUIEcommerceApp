//
//  CategoryItemView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 31/12/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center,spacing: 10) {
                Image(category.image)
                    .renderingMode(.template) // will color blue
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HStack
            .padding()
//            .background(.white)
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
            )
        }

    }
}

struct CategoryItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
