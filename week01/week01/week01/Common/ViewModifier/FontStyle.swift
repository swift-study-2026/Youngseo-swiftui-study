//
//  FontStyle.swift
//  week01
//
//  Created by youngseo on 3/29/26.
//

import SwiftUI

// MARK: - Type

enum FontStyleType {
    case primary
    case secondary
}


// MARK: - Modifier

struct FontStyle: ViewModifier {
    
    let type: FontStyleType
    
    func body(content: Content) -> some View {
        switch type {
        case .primary:
            content
                .font(.pretendard(.bold, size: 18))
                .foregroundColor(.black)
            
        case .secondary:
            content
                .font(.pretendard(.regular, size: 16))
                .foregroundColor(.gray)
        }
    }
}

// MARK: - Extension

extension View {
    func fontStyle(_ type: FontStyleType) -> some View {
        self.modifier(FontStyle(type: type))
    }
}
