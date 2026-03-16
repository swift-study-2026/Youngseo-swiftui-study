//
//  ProfileView.swift
//  week01
//
//  Created by 조영서 on 3/7/26.
//

import SwiftUI

struct ProfileView: View {
    
    let username: String
    
    var body: some View {
        VStack(spacing: 20){
            InfoView(username: username)
            FeedView()
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                Image(.instagramIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                HStack(spacing: 20) {
                    Image(systemName: "plus.square")
                    Image(systemName: "line.3.horizontal")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ProfileView(username: "영돌이")
    }
}
