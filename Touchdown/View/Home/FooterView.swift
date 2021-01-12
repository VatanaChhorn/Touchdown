//
//  FooterView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 08/01/2021.
//

import SwiftUI

// MARK: - PROPERTIES


// MARK: - BODY

struct FooterView: View {
    var body: some View {
       
        VStack (alignment: .center, spacing: 10){
            Text("We offer the most cuttingedge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Vatana Chhorn\nAll right reserved.")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
                
        }  //: VStack
        .padding()
    }
}

// MARK: - PREVIEW

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
