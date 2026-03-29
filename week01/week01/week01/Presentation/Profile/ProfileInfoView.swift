//
//  InfoView.swift
//  week01
//
//  Created by youngseo on 3/14/26.
//

import SwiftUI

struct ProfileInfoView: View {
    
    // MARK: - Properties
    
    let username: String
    
    // MARK: - Body
    
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
                    
                    Text(username)
                        .font(.pretendard(.semibold, size: 15))
                    
                    HStack(spacing: 40){
                        profileCount("8", "게시물")
                        profileCount("235", "팔로워")
                        profileCount("235", "팔로잉")
                    }
                }
                .padding(.leading, 40)
            }
            
            Text("iOS Developer")
                .font(.pretendard(.regular, size: 15))
            
            VStack {
                HStack{
                    
                    profileButton("프로필 편집",action: {print("프로필 편집")})

                    Spacer()
                    
                    profileButton("프로필 공유",action: {print("프로필 공유")})
                    
                    Spacer()
                    
                    Image(systemName: "person.badge.plus")
                        .frame(width: 40, height: 34)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius:10)
                                .stroke(.gray, lineWidth: 1)
                        )
                }
            }
        }
        .padding(.horizontal, 16)
    }
    
    // MARK: - Subview
    
    func profileCount(_ count: String, _ title: String) -> some View {
        VStack(alignment: .leading){
            Text(count)
                .font(.pretendard(.bold, size: 15))
            
            Text(title)
                .font(.pretendard(.regular, size: 15))
        }
    }
    
    func profileButton(_ title: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(title)
                .font(.pretendard(.regular, size: 15))
                .foregroundColor(.black)
                .padding(.horizontal, 40)
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 1)
                )
                .buttonStyle(AnimationStyle())
        }
    }
    
    // MARK: - Styles
    private struct AnimationStyle: ButtonStyle {
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .animation(.easeInOut(duration: 0.15), value: configuration.isPressed)
        }
    }
    
}

#Preview {
    ProfileInfoView(username: "youngseo")
}
