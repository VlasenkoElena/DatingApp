//
//  DatingAppApp.swift
//  DatingApp
//
//  Created by Helen on 11.06.2024.
//

import SwiftUI

@main
struct DatingApp: App {
    @StateObject var matchManager = MatchManager()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(matchManager)
        }
    }
}
