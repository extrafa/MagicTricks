//
//  WalkthroughButton.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import SwiftUI

struct WalkthroughButton: View {
    let walkthrough: WalkthroughStep
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(walkthrough.buttonText)
                .font(.headline)
                .foregroundColor(walkthrough.buttonTextColor)
                .frame(maxWidth: .infinity, maxHeight: 65)
                .background(walkthrough.buttonColor)
                .cornerRadius(30)
                .padding(.horizontal)
        }
    }
}

#Preview {
    WalkthroughButton(walkthrough: WalkthroughStep(
        title: "Test",
        description: "Test",
        image: "Test",
        buttonText: "Test",
        buttonTextColor: .white,
        buttonColor: .black),
        action: { print("WORKS") }
    )
}
