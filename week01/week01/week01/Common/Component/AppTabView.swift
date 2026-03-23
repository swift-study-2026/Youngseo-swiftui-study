//
//  AppTabView.swift
//  week01
//
//  Created by youngseo on 3/22/26.
//

import SwiftUI

struct AppTabView: View {
    
    @Environment(AppState.self) private var appState
    
    var body: some View {
        TabView {
            
            NavigationStack {
                Text("Home")
            }
            .tabItem {
                Image(systemName: "house")
                Text("홈")
            }
            
            NavigationStack {
                ProfileView(username: appState.username)
            }
            .tabItem {
                Image(systemName: "person")
                Text("프로필")
            }
        }
    }
}
