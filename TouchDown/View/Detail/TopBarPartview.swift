//
//  TopBarPartview.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct TopBarPartview: View {
    
    @State private var isAnimating : Bool = false
    @EnvironmentObject var shop : Shop
    var body: some View {
        
        HStack(alignment: .center,spacing: 6, content: {

        
            VStack(alignment : .leading, spacing: 6, content: {
                Text("Price")
                
                Text(shop.ChoosedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    //.scaleEffect(1.35, anchor: .leading)
                
                
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            
            Image(shop.ChoosedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })// Hstack
        .onAppear(perform: {
            withAnimation(.bouncy(duration: 1))
            {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopBarPartview()
        .environmentObject(Shop())
}
