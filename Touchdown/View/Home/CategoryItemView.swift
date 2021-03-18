//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 18/03/2021.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    
    let categories : CategoryModel
    
    // MARK: - BODY
    var body: some View {
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(categories.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(categories.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    
              Spacer()
            }  //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        })  //: Button
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        CategoryItemView(categories: category[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
