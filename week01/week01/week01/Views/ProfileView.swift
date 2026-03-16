//
//  ProfileView.swift
//  week01
//
//  Created by 조영서 on 3/7/26.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        VStack(spacing: 20){
            InfoView()
            FeedView()
        }
    }
}

#Preview {
    ProfileView()
}
