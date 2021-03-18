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
            
            // Detail bottom Part
            
            // Rating + Sizes
            
            // Description
            
            // Quantity + Fav
            
            // Add to cart
            Spacer()
            
        })  //:VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red,
                          green: sampleProduct.green,
                          blue: sampleProduct.blue)
                          .ignoresSafeArea(.all, edges: .all)
        )
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
