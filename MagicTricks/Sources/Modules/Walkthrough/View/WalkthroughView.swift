//
//  ContentView.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import SwiftUI

struct WalkthroughView: View {
    let walkthrough: Walkthrough
    @StateObject private var viewModel = WalkthroughViewModel()
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            TabView(selection: $viewModel.currentSection) {
                ForEach(walkthrough.steps.enumerated(), id: \.offset) { index, step in
                    VStack {
                        Text(step.title)
                        Text(step.description)
                        WalkthroughButton(
                            walkthrough: step,
                            action: { viewModel.buttonAction(total: walkthrough.steps.count) }
                        )
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page)
        }
    }
}

#Preview {
    WalkthroughView(walkthrough: TestWalkthrough.walk)
}
