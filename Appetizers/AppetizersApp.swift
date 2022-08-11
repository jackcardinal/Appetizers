//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/15/22.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
