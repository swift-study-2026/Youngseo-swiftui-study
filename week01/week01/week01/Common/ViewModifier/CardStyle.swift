//
//  CardStyle.swift
//  week01
//
//  Created by youngseo on 3/29/26.
//

import SwiftUI

// MARK: - Type

enum CardStyleType {
    case light
    case strong
}

// MARK: - Modifier

struct CardStyle: ViewModifier {
    
    let type: CardStyleType
    
    func body(content: Content) -> some View {
        switch type {
        case .light:
            content
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 3)
            
        case .strong:
            content
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                .shadow(radius: 10)
        }
    }
}


// MARK: - Extension

extension View {
    func cardStyle(_ type: CardStyleType = .light) -> some View {
        self.modifier(CardStyle(type: type))
    }
}
