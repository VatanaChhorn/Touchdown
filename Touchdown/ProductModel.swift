//
//  ProductModel.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 18/03/2021.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id : Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color : [Double]
    
    var red: Double {
        return color[0]
    }
    
    var green: Double {
        return color[0]
    }
    
    var blue: Double {
        return color[2]
    }
    
    var formattedPrice : String  {
        return "$\(price)"
    }
}
