//
//  NavigationBarView.swift
//  ECommerceApp
//
//  Created by Gurjinder Singh on 28/12/22.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Properties
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } //: Button
            
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            Spacer()
            Button(action: {}) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 20, height: 10, alignment: .center)
                        .offset(x: 13, y: -13)
                } //: ZStack
            } //: Button
        } //: HStack
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
