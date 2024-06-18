//
//  CardService.swift
//  DatingApp
//
//  Created by Helen on 17.06.2024.
//

import Foundation

struct CardService {
    func fetchCardModel() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0)})
    }
}
