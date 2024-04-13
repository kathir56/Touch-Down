//
//  SectionView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct SectionView: View {
    @State var rotationAngle : Bool
    var body: some View {
        
        VStack(alignment: .center, spacing : 0) {
            Spacer()
            Text("Category".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(.degrees(rotationAngle ? 90 : -90))
            Spacer()
        }
        .background(Color.gray.clipShape(RoundedRectangle(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotationAngle: true)
}
