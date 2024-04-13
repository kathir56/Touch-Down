//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        
        
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,spacing: 15, content: {
                
                ForEach(brands){item in
                   BrandItemView(Brand: item)
                }
            })
            .frame(height: 200)
            .padding()
        }
    }
}

#Preview {
    BrandGridView()
        .background(.black)
}
