//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 19/03/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            
            Text("add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
                
        })  //: Button
        .padding(15)
        .background(
            Color(
                red: shop.selectTheProduct?.red ?? sampleProduct.red,
                green: shop.selectTheProduct?.green ?? sampleProduct.green,
                blue: shop.selectTheProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
