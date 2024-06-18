//
//  MockData.swift
//  DatingApp
//
//  Created by Helen on 17.06.2024.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(id: NSUUID().uuidString, fullName: "Scarlett", age: 36,
              profileImagesUrl: ["scarlett", "scarlett1", "scarlett2"]),
        .init(id: NSUUID().uuidString, fullName: "Ryan", age: 43,
              profileImagesUrl: ["gosling", "gosling1", "gosling2"]),
        .init(id: NSUUID().uuidString, fullName: "Emma", age: 35,
              profileImagesUrl: ["emma", "emma1", "emma2"]),
        
        ]
}
