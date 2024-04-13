//
//  Shop.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 14/01/24.
//

import Foundation

class Shop : ObservableObject
{
    @Published var selectedProduct : Bool = false
    @Published var ChoosedProduct : Product? = nil
}
