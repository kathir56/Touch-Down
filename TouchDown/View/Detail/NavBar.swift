//
//  NavBar.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct NavBar: View {
    
    @EnvironmentObject var shop : Shop
    var body: some View {
        
        HStack(content: {
            
            Button(action: {
                haptics.impactOccurred()
                withAnimation(.easeOut(duration: 0.2))
                {
                    shop.selectedProduct = false
                    shop.ChoosedProduct = nil
                }
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
                
            })
            .buttonStyle(.borderless)
            
            Spacer()
            
            Button(action: {
                haptics.impactOccurred()
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            .buttonStyle(.borderless)
            
            
        })
    }
}

#Preview {
    NavBar()
        .environmentObject(Shop())
}
