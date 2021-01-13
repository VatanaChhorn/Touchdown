//
//  CodeableBundleExtension.swift
//  Touchdown
//
//  Created by Vatana Chhorn on 13/01/2021.
//

import Foundation

extension Bundle {
    
    func decode <T: Codable> (_ file: String) -> T {
        
        // Locate the JSON File
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Fail to locate \(file) in bundle.")
        }
        
        // Create the properties for the Data
        
        guard let data = try? Data(contentsOf: url) else  {
            fatalError("Fail to load file from bundle")
        }
        
        // Create the decoder
        
        let decoder = JSONDecoder()
        
        // Create the properties for decoder
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Fail to decode file from bundle")
        }
        
        print("works")
        
        // Return the ready to use data
        return decodedData
        
        
    }
    
}
