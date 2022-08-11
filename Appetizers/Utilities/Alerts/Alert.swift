//
//  Alert.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/21/22.
//

import SwiftUI
    
struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    //MARK: - Network Alerts
    
    static let invalidData =        AlertItem(title: Text("Server Error"),
                                              message: Text("Data received from the server was invalid"),
                                              dismissButton: .default(Text("Okay")))
    
    static let invalidResponse =    AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server, please try again"),
                                              dismissButton: .default(Text("Okay")))

    static let invalidURL =         AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server, If this persists, please contact support"),
                                              dismissButton: .default(Text("Okay")))

    static let unableToComplete =   AlertItem(title: Text("Unable to Complete"),
                                              message: Text("Unable to complete your request at the time. Please check your internet connection."),
                                              dismissButton: .default(Text("Okay")))
    
    static let genericError =   AlertItem(title: Text("Error"),
                                              message: Text("Please check your internet connection or try again later."),
                                              dismissButton: .default(Text("Okay")))

    //MARK: - Account Alerts
    
    static let incompleteForm =     AlertItem(title: Text("Incomplete Form "),
                                              message: Text("You form cannot be submitted because it is incomplete"),
                                              dismissButton: .default(Text("Okay")))
    
    static let invalidEmail =       AlertItem(title: Text("Invalid Email"),
                                              message: Text("Your form cannot be submitted because the email address is invalid"),
                                              dismissButton: .default(Text("Okay")))
    
    //MARK: - Account Alerts
    
    static let userSaveSuccess =     AlertItem(title: Text("Profle Saved "),
                                              message: Text("Your user account info was succcessfully saved"),
                                              dismissButton: .default(Text("Okay")))
    
    static let invalidUserData =     AlertItem(title: Text("Data Error "),
                                              message: Text("There was a problem and your user account data was not saved or retrieved"),
                                              dismissButton: .default(Text("Okay")))
}
   

