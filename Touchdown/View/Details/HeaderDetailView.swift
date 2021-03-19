//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 18/03/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text("Protecting Gear")
            
            Text(shop.selectTheProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }  //:  VStack
        .foregroundColor(.white)
        
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
