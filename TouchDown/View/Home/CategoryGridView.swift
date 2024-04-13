//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        
        
        ScrollView(.horizontal, showsIndicators: false)
        {
            LazyHGrid(rows: gridLayout, alignment: .center,spacing: rowspacing, content: {
                
                Section(header : SectionView(rotationAngle: false),footer: SectionView(rotationAngle: true)){
                    ForEach(categories){ item in
                    CategoryItemView(category: item)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        }
    }
}

#Preview {
    CategoryGridView()
}
