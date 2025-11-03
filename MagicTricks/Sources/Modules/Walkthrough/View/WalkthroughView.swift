//
//  ContentView.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import SwiftUI

struct WalkthroughView: View {
    let steps: Walkthrough
    @State var currentSection: Int = 0
    var body: some View {
        TabView(selection: $currentSection) {
            ForEach(steps.steps.enumerated(), id: \.offset) { index, step in
                Text(step.title)
                    .tag(index)
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    WalkthroughView(steps: TestWalkthrough.walk)
}
