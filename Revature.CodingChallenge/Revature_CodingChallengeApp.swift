//
//  Revature_CodingChallengeApp.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

@main
struct Revature_CodingChallengeApp: App {
    @StateObject var services = Services()
    
    var body: some Scene {
        WindowGroup {
            LandingPage()
                .environmentObject(services)
        }
    }
}
