//
//  WalkthroughViewModel.swift
//  MagicTricks
//
//  Created by Ross on 04.11.2025.
//

import Foundation
import Combine

final class WalkthroughViewModel: ObservableObject {
    @Published var currentSection: Int = 0
    
    func buttonAction(total: Int) {
        guard currentSection < total - 1 else { return }
        currentSection += 1
    }
}
