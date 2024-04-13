//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack (alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
                .foregroundStyle(.white)
            
            Text(shop.ChoosedProduct?.name
                 ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
        })
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
