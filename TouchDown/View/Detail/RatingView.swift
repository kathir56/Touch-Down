//
//  RatingView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct RatingView: View {
    let size : [String] = ["XS","S","M","L","XL"]
    var body: some View {
        HStack (alignment : .top, spacing: 3)
        {
            VStack(alignment : .leading,spacing : 5)
            {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack (alignment : .center,spacing: 5){
                    ForEach(1...5,id: \.self){_ in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .foregroundStyle(.white)
                                
                        })//button
                        .buttonStyle(.borderless)
                    }//loop
                }// Hstack
            }// Vstack
            
            Spacer()
            
            VStack(alignment: .trailing,spacing: 5, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment : .center,spacing : 5,content: {
                    ForEach(size,id: \.self){item in
                        Text(item)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundStyle(colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 5)))
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1))
                    }
                })
            })
        }// Hstack

    }
}

#Preview {
    RatingView()
}
