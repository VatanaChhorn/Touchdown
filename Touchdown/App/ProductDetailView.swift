//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 18/03/2021.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPOERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5, content: {
            // Nav Bar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail top part
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail bottom Part
            VStack (alignment: .center, spacing: 0, content: {
                
                
                // Rating + Sizes
                
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom)
                
                // Description
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })  //: scroll
                
                
                // Quantity + Fav
                
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                // Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            })  //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })  //:VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red,
                          green: sampleProduct.green,
                          blue: sampleProduct.blue)
                          .ignoresSafeArea(.all, edges: .all)
        )
        .zIndex(0)
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
