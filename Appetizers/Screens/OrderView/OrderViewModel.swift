//
//  OrderViewModel.swift
//  Appetizers
//
//  Created by Jack Cardinal on 5/19/22.
//

import Foundation


final class OrderViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    @Published var selectedAppetiser: Appetizer? 
    
}
