//
//  LogoView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 10/01/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        HStack(spacing: 4)
        {
            Text("touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment: .center)
            
            Text("down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    LogoView()
}
