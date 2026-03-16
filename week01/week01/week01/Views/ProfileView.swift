//
//  ProfileView.swift
//  week01
//
//  Created by 조영서 on 3/7/26.
//

import SwiftUI

struct ProfileView: View {
    
    // MARK: - Properties
    
    let username: String
    @State private var showSheet = false
    @State private var moveToExample: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20){
            InfoView(username: username)
            FeedView()
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    showSheet = true
                } label: {
                    Image(.instagramIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                HStack(spacing: 20) {
                    Button {
                        moveToExample = true
                    } label: {
                        Image(systemName: "plus.square")
                    }
                    
                    Image(systemName: "line.3.horizontal")
                }
            }
        }
        
        // MARK: - Sheet
        
        .sheet(isPresented: $showSheet) {
            VStack {
                Text("수민언니 바보ㅋㅋ")
                    .font(.pretendard(.medium, size: 20))
                    .padding()
                
                Button("닫기") {
                    showSheet = false
                }
            }
            .presentationDetents([.medium])
        }
        
        // MARK: - Navigation
        
        .navigationDestination(isPresented: $moveToExample) {
            ExampleView()
        }
    }
}

#Preview {
    NavigationStack {
        ProfileView(username: "영돌이")
    }
}
