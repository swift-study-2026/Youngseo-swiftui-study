//
//  HomeView.swift
//  week01
//
//  Created by youngseo on 3/28/26.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - States
    
    @State private var rotateCat = false
    @State private var showCat = false
    
    @Namespace private var animation
    @State private var selected = false
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 60) {
            
            // MARK: - 1. Spring
            
            HStack {
                
                Text("Spring 애니메이션")
                    .fontStyle(.primary)
                
                Spacer()
                
                Image(.cat1)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(rotateCat ? 1.0 : 0.8)
                    .rotationEffect(.degrees(rotateCat ? 0 : -10))
                    .onTapGesture {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                            rotateCat.toggle()
                        }
                    }
            }
            .cardStyle()
            
            // MARK: - 2. Transition
            
            HStack {
                Text("Transition 애니메이션")
                    .fontStyle(.primary)
                
                Spacer()
                
                VStack {
                    Button("궁금하다면 눌러!") {
                        withAnimation {
                            showCat.toggle()
                        }
                    }
                    
                    if showCat {
                        Image(.cat2)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .transition(.slide)
                    }
                }
            }
            .cardStyle()
            
            // MARK: - 3. MatchedGeometryEffect
            
            HStack {
                
                Text("Transition 애니메이션")
                    .fontStyle(.primary)
                
                Spacer()
                
                ZStack {
                    if selected {
                        Image(.cat3)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250)
                            .matchedGeometryEffect(id: "cat", in: animation)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selected = false
                                }
                            }
                    } else {
                        Image(.cat4)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .clipShape(Circle())
                            .matchedGeometryEffect(id: "cat", in: animation)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selected = true
                                }
                            }
                    }
                }
            }
            .cardStyle()
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    HomeView()
}
