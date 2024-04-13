//
//  Constants.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 09/01/24.
//

import SwiftUI

//Color
let colorBackground : Color = Color("ColorBackground")
let colorGray : Color = Color(.systemGray4)

// data

//(
//player
let players : [player] = Bundle.main.decode("player.json")

//category
let categories : [Category] = Bundle.main.decode("category.json")

//product
let products : [Product] = Bundle.main.decode("product.json")

//brand
let brands : [Brand] = Bundle.main.decode("brand.json")

//)

//sample product
let sampleProduct : Product = products[0]

//Haptics
let haptics = UIImpactFeedbackGenerator(style: .medium)

//Layout

let rowspacing : CGFloat = 10
let columnspacing : CGFloat = 10
var gridLayout : [GridItem] = Array(repeating: GridItem(.flexible(),spacing: rowspacing), count: 2)
