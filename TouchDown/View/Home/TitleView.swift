//
//  TitleView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct TitleView: View {
    var title : String
    //var items : [Product] = products
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
        }
        .padding(.top,15)
        .padding(.horizontal)
        .padding(.bottom,10)
    }
}

#Preview {
    TitleView(title: "Helmets")
}
