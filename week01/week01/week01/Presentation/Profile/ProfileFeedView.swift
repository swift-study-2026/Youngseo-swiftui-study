//
//  FeedView.swift
//  week01
//
//  Created by 조영서 on 3/9/26.
//

import SwiftUI

// MARK: - Model

struct Post: Identifiable {
    let id = UUID()
    let image: ImageResource
}

// MARK: - FeedView

struct ProfileFeedView: View {
    
    // MARK: - Properties
    
    let columns = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]

    let posts: [Post] = [
        Post(image: .cat1),
        Post(image: .cat2),
        Post(image: .cat3),
        Post(image: .cat4),
        Post(image: .cat5),
        Post(image: .cat6),
        Post(image: .cat8),
        Post(image: .cat2),
        Post(image: .cat7),
        Post(image: .cat4),
        Post(image: .cat5),
        Post(image: .cat6),
        Post(image: .cat1),
        Post(image: .cat8),
        Post(image: .cat3),
        Post(image: .cat1),
        Post(image: .cat5),
        Post(image: .cat3),
        Post(image: .cat2),
        Post(image: .cat8)
    ]

    // MARK: - Body

    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns, spacing: 1) {

                ForEach(posts) { post in
                    Rectangle()
                        .aspectRatio(1, contentMode: .fit)
                        .overlay {
                            Image(post.image)
                                .resizable()
                                .scaledToFill()
                        }
                        .clipped()
                        .overlay(alignment: .bottomTrailing) {
                            Image(systemName: "square.stack")
                                .foregroundColor(.white)
                                .padding(6)
                        }
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ProfileFeedView()
}
