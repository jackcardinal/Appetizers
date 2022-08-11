//
//  User.swift
//  Appetizers
//
//  Created by Jack Cardinal on 5/18/22.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var napkins = false
    var refills = false
}
