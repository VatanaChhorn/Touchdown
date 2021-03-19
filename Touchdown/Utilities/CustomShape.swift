//
//  CustomShape.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 19/03/2021.
//

import SwiftUI
    
struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
    }
}
