//
//  CardModel.swift
//  DatingApp
//
//  Created by Helen on 17.06.2024.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id}
}
