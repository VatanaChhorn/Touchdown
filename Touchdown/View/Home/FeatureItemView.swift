//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 13/01/2021.
//

import SwiftUI

struct FeatureItemView: View {
    // MARK: - PROPERTIES
    
    let player : Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW

struct FeatureItemView_Previews: PreviewProvider {

    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
