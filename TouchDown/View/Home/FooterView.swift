//
//  FooterView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 09/01/24.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        
        VStack(alignment: .center,spacing: 10) {
            
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at the affordable price.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyrights © Kathir\n All right reserved")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(1)
        }//vstack
        .padding()
    }
}

#Preview {
    FooterView()
}
