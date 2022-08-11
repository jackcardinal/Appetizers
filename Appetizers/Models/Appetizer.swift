//
//  Appetizer.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/16/22.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(
        id: 001,
        name: "Test Appetizer Thing",
        description: "Test appetizer description, this appetizer is yummy and full of gluten and soy.",
        price: 5.00,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 5,
        carbs: 50)
    
    static let sampleAppetizer1 = Appetizer(
        id: 001,
        name: "Test Appetizer 1",
        description: "Test appetizer description, this appetizer is yummy and full of gluten and soy.",
        price: 5.00,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 5,
        carbs: 50)
    
    static let sampleAppetizer2 = Appetizer(
        id: 002,
        name: "Test Appetizer 2",
        description: "Test appetizer description, this appetizer is yummy and full of gluten and soy.",
        price: 5.00,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 5,
        carbs: 50)
    
    static let sampleAppetizer3 = Appetizer(
        id: 003,
        name: "Test Appetizer 3",
        description: "Test appetizer description, this appetizer is yummy and full of gluten and soy.",
        price: 5.00,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 5,
        carbs: 50)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItems = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3]
//    static let orderItems = App

}
