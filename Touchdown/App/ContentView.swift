//
//  ContentView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 08/01/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var body: some View {

        // MARK: - BODY
        FooterView()
            .padding(.horizontal)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
