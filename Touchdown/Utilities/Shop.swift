//
//  Shop.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 19/03/2021.
//

import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectTheProduct: Product? = nil
    
}
