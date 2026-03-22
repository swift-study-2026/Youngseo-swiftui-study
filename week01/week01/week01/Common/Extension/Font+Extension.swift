//
//  Font+Extension.swift
//  week01
//
//  Created by 조영서 on 3/7/26.
//

import SwiftUI

extension Font {
    
    static func pretendard(_ weight: PretendardWeight, size: CGFloat) -> Font {
        .custom(weight.fontName, size: size)
    }
}

enum PretendardWeight {
    case thin
    case extraLight
    case light
    case regular
    case medium
    case semibold
    case bold
    case extraBold
    
    var fontName: String {
        switch self {
        case .thin:
            return "Pretendard-Thin"
        case .extraLight:
            return "Pretendard-ExtraLight"
        case .light:
            return "Pretendard-Light"
        case .regular:
            return "Pretendard-Regular"
        case .medium:
            return "Pretendard-Medium"
        case .semibold:
            return "Pretendard-SemiBold"
        case .bold:
            return "Pretendard-Bold"
        case .extraBold:
            return "Pretendard-ExtraBold"
        }
    }
}
