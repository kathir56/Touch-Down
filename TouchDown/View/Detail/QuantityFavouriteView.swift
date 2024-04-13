//
//  QuantityFavouriteView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct QuantityFavouriteView: View {
    @State private var isLiked : Bool = false
    @State private var counter : Int = 0
    var body: some View {
        
        HStack(spacing : 10)
        {
            Button(action: {
                
                if counter > 0
                {
                    haptics.impactOccurred()
                    counter-=1
                }
            }, label: {
                
                Image(systemName: "minus.circle")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
            })
            
            Text("\(counter)")
                .font(.title)
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                
                if counter<100
                {
                    haptics.impactOccurred()
                    counter+=1
                }
                
            }, label: {
                
                Image(systemName: "plus.circle")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
            })
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.title)
                .fontWeight(.bold)
                .onTapGesture {
                    haptics.impactOccurred()
                    isLiked.toggle()
                }
                .foregroundStyle(isLiked ? .red : .gray)
            
        }
    }
}

#Preview {
    QuantityFavouriteView()
}
