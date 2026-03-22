//
//  TEST.swift
//  week01
//
//  Created by youngseo on 3/21/26.
//

import SwiftUI

struct ParentView: View {

    @State private var name = ""

    var body: some View {
        VStack {
            Text("부모: \(name)")
            ChildView(name: $name)
        }
    }
}

#Preview {
    ParentView()
}
