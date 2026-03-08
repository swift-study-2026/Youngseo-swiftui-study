//
//  TestView.swift
//  week01
//
//  Created by 조영서 on 3/7/26.
//

import SwiftUI

struct TestView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            
            // MARK: - Top Profile Section
            HStack(alignment: .center, spacing: 16) {
                
                // 프로필 이미지 (에셋 이미지)
                Image(.cat9)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                    )
                
                Spacer()
                
                // 통계
                HStack(spacing: 20) {
                    VStack {
                        Text("42")
                            .font(.custom("Pretendard-Bold", size: 18))
                            .foregroundColor(.primary)
                        
                        Text("Posts")
                            .font(.custom("Pretendard-Regular", size: 14))
                            .foregroundColor(.gray)
                    }
                    
                    VStack {
                        Text("1.2K")
                            .font(.custom("Pretendard-Bold", size: 18))
                            .foregroundColor(.primary)
                        
                        Text("Followers")
                            .font(.custom("Pretendard-Regular", size: 14))
                            .foregroundColor(.gray)
                    }
                    
                    VStack {
                        Text("310")
                            .font(.custom("Pretendard-Bold", size: 18))
                            .foregroundColor(.primary)
                        
                        Text("Following")
                            .font(.custom("Pretendard-Regular", size: 14))
                            .foregroundColor(.gray)
                    }
                }
            }
            
            // MARK: - Profile Info
            VStack(alignment: .leading, spacing: 6) {
                
                Text("Youngseo")
                    .font(.custom("Pretendard-SemiBold", size: 16))
                    .foregroundColor(.primary)
                
                Text("iOS Developer")
                    .font(.custom("Pretendard-Regular", size: 14))
                    .foregroundColor(.blue)
                
                Text("Building apps with SwiftUI 🍎")
                    .font(.custom("Pretendard-Regular", size: 13))
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: - Buttons
            HStack(spacing: 12) {
                
                Text("Edit Profile")
                    .font(.custom("Pretendard-SemiBold", size: 14))
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                
                // SF Symbol
                Image(systemName: "person.badge.plus")
                    .font(.system(size: 16))
                    .frame(width: 40, height: 34)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TestView()
}
