//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 10/01/24.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // Mark - properites
    var player : player
    
    var body: some View {
        
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .padding(.top,10)
            .padding(.horizontal,10)
        
            
    }
}

#Preview {
    FeaturedItemView(player: players[0])
}
