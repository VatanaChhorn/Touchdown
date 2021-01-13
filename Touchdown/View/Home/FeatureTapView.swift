//
//  FeatureTapView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 13/01/2021.
//

import SwiftUI

struct FeatureTapView: View {
    // MARK: - PROERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeatureItemView(player: player)
            }
        }  //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
    }
}

// MARK: - PREVIEW
struct FeatureTapView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTapView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
