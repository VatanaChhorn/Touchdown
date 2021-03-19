//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 19/03/2021.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - PROPERTIES
    
    let sizes : [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack (alignment: .top, spacing: 3, content: {
            // RATING
            
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack (alignment: .center, spacing: 3, content: {
                    ForEach (1...5, id: \.self) {
                        item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.gray.cornerRadius(5))
                                .foregroundColor(.white)
                        })  //: Button
                    }  //: ForEach
                })  //: HStack
            })  //: VStack
            
            Spacer()
            
            // SIZES
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack (alignment: .center, spacing: 3, content: {
                    
                    ForEach(sizes, id: \.self) {
                        size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(.gray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                        
                                )
                        })
                    }
        
                })
                
            })
            
        })
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
