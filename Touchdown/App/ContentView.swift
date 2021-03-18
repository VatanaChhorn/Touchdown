//
//  ContentView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 08/01/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            VStack (spacing: 0) {
                
                // MARK: - NavigationBarView
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                // MARK: - ScrollView
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack (spacing: 0) {
                        
                        // MARK: - FeatureTapView
                        FeatureTapView()
                            .padding(.vertical, 16)
                        
                        // MARK: - CategoryGridView
                        CategoryGridView()
                        
                        // MARK: - TITLE VIEW
                        TitleView(title: "Helmet")
                        
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15, pinnedViews: [], content: {
                            ForEach (products) {
                                product in
                                ProductItemView(product: product)
                            }
                        })  //:LazyVGrid
                        .padding()
                        
                        TitleView(title: "Brand")
                        BrandGridView()
                        
                        // MARK: - FooterView
                        FooterView()
                            .padding(.horizontal)
                        
                    }  //: VStack
                })  //: ScrollView
            }  //:  VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }  //: ZStack
        .ignoresSafeArea(.all, edges: .top)
        
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
        
        
        
        
        
    }
}
