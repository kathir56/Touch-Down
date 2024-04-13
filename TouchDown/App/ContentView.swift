//
//  ContentView.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 09/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        
        ZStack {
            if shop.selectedProduct == false && shop.ChoosedProduct == nil {
                VStack(spacing:0) {
                    
                    NavigationView()
                        .padding(.horizontal,40)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)//dynamic calculation of top bar
                        .background(.white)
                        .shadow(color: .black.opacity(0.3),radius: 5,x: 0,y: 5)
                    
                    ScrollView(.vertical, showsIndicators : false)
                    {
                        
                        VStack (spacing : 0){
                            FeaturedTabView()
                                .frame(height: 250)
                                .padding(.vertical,16)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                                .padding(.horizontal,6)
                            
                            ProductGridView()
                                .padding(.horizontal,6)
                            
                            TitleView(title: "Brands")
                                .padding(.horizontal,6)
                            
                            BrandGridView()
                               .padding(.horizontal,6)
                            
                            FooterView()
                                .padding(.horizontal,6)
                        }
                        
                        
                    }
                    .padding(.horizontal,20)
                    
                    
                    
                    
                }// Vstack
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
            
        }// Zstack
        .ignoresSafeArea(.all,edges: .top)
        
        
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
