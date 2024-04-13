//
//  Product.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 13/01/24.
//

import Foundation

struct Product : Identifiable,Codable
{
    var id : Int
    var name : String
    var image : String
    var price : Int
    var description : String
    var color : [Double]
    
    var formattedPrice : String {
        return "$\(price)"
    }
    
    var red : Double
    {
        return color[0]
    }
    
    var green : Double
    {
        return color[1]
    }
    
    var blue : Double
    {
        return color[2]
    }
}
