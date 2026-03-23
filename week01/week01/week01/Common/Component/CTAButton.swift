//
//  CTAButton.swift
//  week02
//
//  Created by youngseo on 3/16/26.
//

import SwiftUI

struct CTAButton: View {

    // MARK: - Properties
    
    let title: String
    let backgroundColor: Color
    let textColor: Color
    let action: () -> Void
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.pretendard(.bold, size: 18))
                .padding(15)
                .frame(maxWidth: .infinity)
                .foregroundStyle(textColor)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}
