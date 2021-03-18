//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 18/03/2021.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockWise: false),
                        footer: SectionView(rotateClockWise: true)) {
                    ForEach(category) {
                        category in
                        CategoryItemView(categories: category)
                    }
                }
                
            })  //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })  //: ScrollView
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
