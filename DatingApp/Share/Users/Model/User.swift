//
//  User.swift
//  DatingApp
//
//  Created by Helen on 17.06.2024.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    let age: Int
    let profileImagesUrl: [String]
    let email: String
    let occupation: String
}
