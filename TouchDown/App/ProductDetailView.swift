//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        
        VStack(alignment: .leading,spacing: 5, content: {
            
            //navbar
            NavBar()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            //detail top part
            TopBarPartview()
                .padding(.horizontal)
                .zIndex(1)
            //detail bottom part
            
            VStack(alignment: .center,spacing: 0, content: {
                
                //ratings + sizes
                RatingView()
                    .padding(.top,-20)
                    .padding(.bottom)
                
//                
//            
//                //description
                ScrollView(.vertical,showsIndicators: false) {
                    Text(shop.ChoosedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design:.rounded))
                        .foregroundStyle(.gray)
                    .multilineTextAlignment(.leading)
                }
//                
//                
                //quantity + favourite
                QuantityFavouriteView()
                    .padding(.vertical,10)
                
                //add to cart
                
                AddToCartView()
                    .padding(.bottom,20)
                
            })// Vstack
            .padding(.horizontal)
            .background(Color.white
                  .clipShape(CustomShape())
                  .padding(.top,-105)
            )
            .ignoresSafeArea(.all)
        })// Vstack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red: shop.ChoosedProduct?.red ?? sampleProduct.red,
                green: shop.ChoosedProduct?.green ?? sampleProduct.green,
                blue: shop.ChoosedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all,edges: .all)
                
        )
        
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
