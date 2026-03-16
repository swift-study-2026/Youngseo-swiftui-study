//
//  LoginView.swift
//  week01
//
//  Created by youngseo on 3/15/26.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - Properties
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var moveToProfile: Bool = false
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            
            VStack(spacing: 10){
                
                Spacer()

                Image(.instagramLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding(.bottom, 20)
                
                AuthTextField(
                    placeholder: "전화번호, 사용자 이름 또는 이메일",
                    text: $username
                )

                AuthTextField(
                    placeholder: "비밀번호",
                    text: $password,
                    isSecure: true
                )

                CTAButton(
                    title: "로그인",
                    backgroundColor: .blue,
                    textColor: .white
                ) {
                    moveToProfile = true
                }
                .padding(.top, 40)
                .padding(.bottom, 20)
                
                Text("비밀번호를 잊으셨나요?")
                    .font(.pretendard(.medium, size: 15))
                    .foregroundColor(.blue)
                    .padding(.bottom, 150)

                Spacer()
            }
            .padding(.horizontal, 30)
            
            // MARK: - Navigation
            
            .navigationDestination(isPresented: $moveToProfile) {
                ProfileView(username: username)
            }
        }
    }
}

#Preview {
    LoginView()
}
