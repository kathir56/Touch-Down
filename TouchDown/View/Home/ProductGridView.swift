//
//  ProductGridView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct ProductGridView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        
        
        LazyVGrid(columns: gridLayout,spacing: 15 , content: {
            ForEach(products){ item in
                ProductItemView(product: item)
                    .onTapGesture {
                        withAnimation(.linear(duration: 0.2))
                        {
                            shop.selectedProduct = true
                            shop.ChoosedProduct = item
                        }
                    }
                
            }
        })
        .padding(15)
    }
}

#Preview {
    ProductGridView()
}
