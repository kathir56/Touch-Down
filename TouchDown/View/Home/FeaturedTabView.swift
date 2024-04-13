//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 10/01/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var player : [player] = players
    var body: some View {
        
        TabView
        {
            ForEach(player){item in
                FeaturedItemView(player: item)
                    .padding(.top,10)
                    .padding(.horizontal,10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(width: 400)
    }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
