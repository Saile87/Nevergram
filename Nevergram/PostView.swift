//
//  PostView.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 12.07.23.
//

import SwiftUI

struct PostView: View {
    
    var post: Post
    
    var body: some View {
        VStack {
            HeaderView(post: post)
                .padding(.horizontal)
            MainView(post: post)
            ActionView()
                .padding(.horizontal)
                .padding(.top, 5)
            LikeView(post: post)
                .padding(.horizontal)
                .padding(.top, 5)
            DescriptionView(post: post)
                .padding(.horizontal)
        }
    }
}

private let storyBackgroundGradient = AngularGradient(gradient: Gradient(
    colors: [.purple, .red, .orange, .purple]),
    center: .center,
    startAngle: .zero,
    endAngle: .degrees(270)
)

private struct HeaderView: View {
    
    var post: Post
    
    var body: some View {
        HStack {
            Image(post.profilPicture)
                .resizable()
                .clipShape(Circle())
                .frame(width: 30, height: 30)
                .background {
                    Circle()
                        .stroke(storyBackgroundGradient, lineWidth: 3)
                }
            Text(post.user)
                .font(.subheadline)
            Image(systemName: "checkmark.circle.fill")
                .foregroundColor(.blue)
                .font(.subheadline)
            Spacer()
            Image(systemName: "ellipsis")
        }
    }
}


private struct MainView: View {
    
    var post: Post
    
    var body: some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay(
                Image(post.userImage)
                    .resizable()
                    .scaledToFit()
            )

    }
}

private struct ActionView: View {
    var body: some View {
        HStack {
            Image(systemName: "heart")
                .padding(.trailing, 5)
            Image(systemName: "message")
                .padding(.trailing, 5)
            Image(systemName: "paperplane")
            
            Spacer()
            
            Image(systemName: "bookmark")
        }.font(.title3)
    }
}

private struct LikeView: View {
    
    var post: Post
    
    var body: some View {
        HStack {
            Text("Gefällt mir \(post.likes)")
                .font(.footnote)
            Spacer()
        }
    }
}
private struct DescriptionView: View {
    
    var post: Post
    
    var body: some View {
        HStack {
            Text(post.user)
                .bold()
            Text(" ")
            Text(post.description)
                .padding(.leading)
            Spacer()
        }.font(.footnote)
    }
}


struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(user: "Elias", userImage: "Samuno", profilPicture: "profilbild", description: "I Love it🩵💙♥️", likes: 123456))
    }
}

struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

