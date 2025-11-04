//
//  WalkthroughButton.swift
//  MagicTricks
//
//  Created by Ross on 03.11.2025.
//

import SwiftUI

struct WalkthroughButton: View {
    let walkthrough: WalkthroughStep
    let style = WalkthroughButtonStyle()
    let action: buttonAction
    var body: some View {
        Button {
            action()
        } label: {
            Text(walkthrough.buttonText)
                .font(.headline)
                .foregroundColor(style.buttonTextColor)
                .frame(maxWidth: .infinity, maxHeight: 65)
                .background(style.buttonColor)
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
        buttonText: "Test"),
        action: { print("WORKS") }
    )
}
