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
        VStack(spacing: 40) {
            
            // MARK: - 1. Spring
            
            Image(.cat1)
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .scaleEffect(rotateCat ? 1.0 : 0.8)
                .rotationEffect(.degrees(rotateCat ? 0 : -10))
                .onTapGesture {
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                        rotateCat.toggle()
                    }
                }
            
            
            // MARK: - 2. Transition
            
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
                        .frame(width: 150)
                        .transition(.slide)
                }
            }
            
            
            // MARK: - 3. MatchedGeometryEffect
            
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
                        .frame(width: 120)
                        .matchedGeometryEffect(id: "cat", in: animation)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selected = true
                            }
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
