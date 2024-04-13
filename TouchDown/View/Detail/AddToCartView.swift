//
//  AddToCartView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct AddToCartView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        
        Button(action: {
            haptics.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Spacer()
        })
        .buttonStyle(.borderless)
        .padding(15)
        .background(Color(red: shop.ChoosedProduct?.red ?? sampleProduct.red, green: shop.ChoosedProduct?.green ?? sampleProduct.green, blue: shop.ChoosedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartView()
        .environmentObject(Shop())
}
