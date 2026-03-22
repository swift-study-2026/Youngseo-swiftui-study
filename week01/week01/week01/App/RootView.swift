//
//  RootView.swift
//  week01
//
//  Created by youngseo on 3/22/26.
//

import SwiftUI

struct RootView: View {
    
    @Environment(AppState.self) private var appState
    
    var body: some View {
        if appState.isLoggedIn {
            AppTabView()
        } else {
            LoginView()
        }
    }
}
