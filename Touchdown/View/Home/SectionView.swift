//
//  SectionView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 18/03/2021.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    
    @State var rotateClockWise : Bool
    
    
    // MARK: - BODY
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }  //: VStack
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240  ))
            .padding()
            .background(colorBackground)
    }
}
