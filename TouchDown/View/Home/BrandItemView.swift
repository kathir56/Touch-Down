//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct BrandItemView: View {
    
    var Brand : Brand
    
    var body: some View {
        Image(Brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1.0))
    }
}

#Preview {
    BrandItemView(Brand: brands[0])
        .background(.black)
}
