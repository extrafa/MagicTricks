//
//  Walkthrough.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import Foundation
import SwiftUI

struct Walkthrough: Identifiable, Hashable {
    var id: String
    let steps: [WalkthroughStep]
}

struct WalkthroughStep: Hashable {
    let title: String
    let description: String
    let image: String
    let buttonText: String
    let buttonTextColor: Color
    let buttonColor: Color
}

struct TestWalkthrough {
    static let walk: Walkthrough = Walkthrough(
        id: "walk",
        steps: [
        WalkthroughStep(title: "Test 1", description: "test", image: "test", buttonText: "test", buttonTextColor: .white, buttonColor: .black),
        WalkthroughStep(title: "Test 2", description: "test", image: "test", buttonText: "test", buttonTextColor: .white, buttonColor: .black),
        WalkthroughStep(title: "Test 3", description: "test", image: "test", buttonText: "test", buttonTextColor: .white, buttonColor: .black)
    ])
}
