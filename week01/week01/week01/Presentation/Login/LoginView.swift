//
//  LoginView.swift
//  week01
//
//  Created by youngseo on 3/15/26.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - Properties
    
    @State private var viewModel = LoginViewModel()
    
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
                    text: $viewModel.username
                )

                AuthTextField(
                    placeholder: "비밀번호",
                    text: $viewModel.password,
                    isSecure: true
                )

                CTAButton(
                    title: "로그인",
                    backgroundColor: .blue,
                    textColor: .white
                ) {
                    viewModel.login()
                }
                .padding(.top, 40)
                .padding(.bottom, 20)
                
                Button {
                    viewModel.tapForgotPassword()
                } label: {
                    Text("비밀번호를 잊으셨나요?")
                        .font(.pretendard(.medium, size: 15))
                        .foregroundColor(.blue)
                }
                .padding(.bottom, 150)
                
                .alert("비밀번호 재설정", isPresented: $viewModel.showPasswordAlert) {
                    Button("확인", role: .cancel) { }
                } message: {
                    Text("비밀번호 재설정 페이지로 이동하시겠습니까?")
                }

                Spacer()
            }
            .padding(.horizontal, 30)
            
            // MARK: - Navigation
            
            .navigationDestination(isPresented: $viewModel.moveToProfile) {
                ProfileView(username: viewModel.username)
            }
        }
    }
}

#Preview {
    LoginView()
}
