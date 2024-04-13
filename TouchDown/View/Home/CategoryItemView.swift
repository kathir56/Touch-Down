//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct CategoryItemView: View {
    // Mark - properties
    var category : Category
    // Mark - body
    var body: some View {
        
        
        Button(action: {}) {
            
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            
        }//button
        .buttonStyle(.borderless)
        .padding()
        .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray ,lineWidth: 1.0)
        )
         
       
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
