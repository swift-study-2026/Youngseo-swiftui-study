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
    @Environment(AppState.self) private var appState
    
    // MARK: - Body
    
    var body: some View {
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
                appState.isLoggedIn = true
                appState.username = viewModel.username
            }
            .padding(.top, 40)
            .padding(.bottom, 20)
            
            Button {
                viewModel.showPasswordAlert = true
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
    }
}

#Preview {
    LoginView()
}
