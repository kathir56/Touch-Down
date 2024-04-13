//
//  JSONdecoadable.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 10/01/24.
//

import Foundation

extension Bundle
{
    func decode<T:Codable> (_ file : String)->T
    {
        // Locate the json file
        guard let url = url(forResource: file, withExtension: nil)else
        {
            fatalError("Failed to locate the bundle")
        }
        
        // create a property for a data
        guard let data = try? Data(contentsOf: url)else
        {
            fatalError("Failed to load the data from the bundle")
        }
        
        // create a decoder
        let decoder = JSONDecoder()
        
        // create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data)else
        {
            fatalError("Failed to decode the bundle")
        }
        
        return decodedData
        
    }
}
