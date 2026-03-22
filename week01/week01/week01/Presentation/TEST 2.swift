//
//  TEST.swift
//  week01
//
//  Created by youngseo on 3/21/26.
//

import SwiftUI

struct ChildView: View {

    @Binding var name: String

    var body: some View {
        TextField("이름 입력", text: $name)
    }
}
