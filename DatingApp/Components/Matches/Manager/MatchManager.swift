//
//  MatchManager.swift
//  DatingApp
//
//  Created by Helen on 19.06.2024.
//

import Foundation

class MatchManager: ObservableObject {
    @Published var matchUser: User?
    
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        
        if didMatch {
            matchUser = user
        }
    }
}
