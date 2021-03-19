//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 19/03/2021.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    // MARK: - PROPERTIES
    
    @State private var counted : Int = 0
    
    // MARK: - BODY
    var body: some View {
        
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counted > 0 {
                counted -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counted)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counted < 100 {
                    counted += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            
        })  //:  HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)

        
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
