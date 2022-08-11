//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/21/22.
//

import SwiftUI

//@MainActor puts anything UI related on main thread
@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    @Published var isShowingDetailView = false
    var selectedAppetiser: Appetizer? {
        didSet { isShowingDetailView = true }
    }

    func getAppetizers() {
        
        //must be on main thread b/c SwiftUI updates UI but in AsyncAwait you don't have to do that
        isLoading = true
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    case .genericError:
                        alertItem = AlertContext.genericError
                    }
                } else {
                    //change to generic error
                    alertItem = AlertContext.genericError
                }
                isLoading = false
            }
        }

    }
/*
    func getAppetizers() {
        
        //must be on main thread b/c SwiftUI updates UI
        isLoading = true
        
        NetworkManager.shared.getAppetizers { result in

            DispatchQueue.main.async { [self] in
                self.isLoading = false

                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
 
 */
}
