//
//  NavigationView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 10/01/24.
//

import SwiftUI

struct NavigationView: View {
    
    // Mark - properties
    @State private var isAnimated : Bool = false
    
    var body: some View {
    
        HStack
        {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            })
            .buttonStyle(.borderless)//(.plain) without visual effects of touching or (.borderless) with visual effects it will remove the default border
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0,y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeIn(duration: 0.5))
                    {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                
                ZStack {
                    
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14,alignment: .center)
                        .offset(x:13,y:-10)
                }
            })
            .buttonStyle(.borderless)
            
        }
    }
}

#Preview {
    NavigationView()
}
