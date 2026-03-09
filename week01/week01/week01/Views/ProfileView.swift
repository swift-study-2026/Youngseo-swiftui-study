//
//  ProfileView.swift
//  week01
//
//  Created by 조영서 on 3/7/26.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Image(.cat4)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        Circle()
                            .stroke(.gray, lineWidth: 1)
                    )
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("조영서")
                        .font(.pretendard(.semibold, size: 15))
                    
                    HStack(spacing: 40){
                        VStack(alignment: .leading){
                            Text("8")
                                .font(.pretendard(.bold, size: 15))
                            Text("게시물")
                                .font(.pretendard(.regular, size: 15))
                        }
                        
                        VStack(alignment: .leading){
                            Text("235")
                                .font(.pretendard(.bold, size: 15))
                            Text("팔로워")
                                .font(.pretendard(.regular, size: 15))
                        }
                        
                        VStack(alignment: .leading){
                            Text("235")
                                .font(.pretendard(.bold, size: 15))
                            Text("팔로잉")
                                .font(.pretendard(.regular, size: 15))
                        }
                    }
                }
                .padding(.leading, 40)
            }
            
            Text("iOS Developer")
                .font(.pretendard(.regular, size: 15))
            
            VStack {
                HStack{
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("프로필 편집")
                            .font(.pretendard(.regular, size: 15))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius:10)
                            .stroke(.gray, lineWidth: 1)
                    )
                    
                    Spacer()
                    
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("프로필 공유")
                            .font(.pretendard(.regular, size: 15))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius:10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    Spacer()
                    
                    Image(systemName: "person.badge.plus")
                        .frame(width: 40, height: 34)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius:10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 20)
        FeedView()
    }
}

#Preview {
    ProfileView()
}
