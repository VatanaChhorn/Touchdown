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
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack (spacing: 0) {
                        FeatureTapView()
                            .padding(.vertical, 16)
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
    }
}
