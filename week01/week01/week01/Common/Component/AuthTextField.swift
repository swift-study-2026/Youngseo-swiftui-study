//
//  AuthTextField.swift
//  week01
//
//  Created by youngseo on 3/16/26.
//

import SwiftUI

struct AuthTextField: View {
    
    // MARK: - Properties

    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false

    // MARK: - Body

    var body: some View {
        if isSecure {
            SecureField(placeholder, text: $text)
                .font(.pretendard(.medium, size: 16))
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(.systemGray6))
                )
        } else {
            TextField(placeholder, text: $text)
                .font(.pretendard(.medium, size: 16))
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(.systemGray6))
                )
        }
    }
}
