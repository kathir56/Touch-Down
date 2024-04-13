//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Kathiravan Murali on 09/01/24.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
