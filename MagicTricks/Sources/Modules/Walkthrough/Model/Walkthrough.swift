//
//  Walkthrough.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import Foundation
import SwiftUI

typealias buttonAction = () -> Void

struct Walkthrough: Identifiable, Hashable {
    var id: String
    let steps: [WalkthroughStep]
}

struct WalkthroughStep: Hashable {
    let title: String
    let description: String
    let image: String
    let buttonText: String
}

struct TestWalkthrough {
    static let walk: Walkthrough = Walkthrough(
        id: "walk",
        steps: [
        WalkthroughStep(title: "Test 1", description: "test", image: "test", buttonText: "test"),
        WalkthroughStep(title: "Test 2", description: "ergergwer", image: "test", buttonText: "refrf"),
        WalkthroughStep(title: "Test 3", description: "ergergfervsfvrevs", image: "test", buttonText: "gbdser")
    ])
}
