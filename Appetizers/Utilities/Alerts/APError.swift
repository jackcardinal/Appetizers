//
//  APError.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/17/22.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
    case genericError
}

enum FormError: Error {
    case incompleteForm
    case invalidEmail
}
