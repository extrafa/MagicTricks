//
//  MagicTricksApp.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import SwiftUI

@main
struct MagicTricksApp: App {
    var body: some Scene {
        WindowGroup {
            WalkthroughView(walkthrough: TestWalkthrough.walk)
        }
    }
}
