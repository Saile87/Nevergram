//
//  HomeView.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 10.07.23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var posts = [
    Post(user: "Fuchs", userImage: "Bruno", profilPicture: "fuchs", description: "Der süsseste Bär der Welt🐻", likes: 1234),
    Post(user: "Affe", userImage: "BrunoEl", profilPicture: "affe", description: "Brother Love 🩵💙♥️", likes: 5555),
    Post(user: "Bär", userImage: "Fam", profilPicture: "bar", description: "Nice Day!!! 🩵💙♥️", likes: 9090),
    Post(user: "Drache", userImage: "Kim", profilPicture: "drache", description: "Hot-Mode!!! 🩵💙♥️", likes: 999999),
    Post(user: "Löwe", userImage: "Samila", profilPicture: "lion", description: "Geschwisterliebe!! 🩵💙♥️", likes: 4567)
    ]
    
    var body: some View {
        List {
            StoriesView()
                .padding(.bottom)
                .listRowInsets(EdgeInsets())
            ForEach(posts) { post in
                PostView(post: post)
                    .padding(.vertical, 10)
                    .listRowInsets(EdgeInsets())
            }
        }
        .listStyle(PlainListStyle())
    }
}


private struct StoriesView: View {
    
    @State private var stories = [
        Story(user: "Fuchs", image: "fuchs"),
        Story(user: "Affe", image: "affe"),
        Story(user: "Löwe", image: "lion"),
        Story(user: "Bär", image: "bar"),
        Story(user: "Drache", image: "drache"),
        Story(user: "Fuchs", image: "fuchs"),
        Story(user: "Löwe", image: "lion"),
        Story(user: "Affe", image: "affe"),
        Story(user: "Bär", image: "bar"),
        Story(user: "Drache", image: "drache")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                YourStoryView(image: "profilbild")
                ForEach(stories) { story in
                    StoryItem(story: story)
                }
            }.padding(.leading)
        }
    }
}

private let storyBackgroundGradient = AngularGradient(gradient: Gradient(
    colors: [.purple, .red, .orange, .purple]),
                                              center: .center,
                                              startAngle: .zero,
                                              endAngle: .degrees(270)
)

private struct StoryItem: View {
    var story: Story
    var body: some View {
        VStack {
            Image(story.image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .background {
                    Circle()
                        .stroke(storyBackgroundGradient, lineWidth: 5)
                }
                .padding(2.5)
            Text(story.user)
                .font(.subheadline)
        }
    }
}

private struct YourStoryView: View {
    
    var image: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(1)
                        .background(.blue)
                        .clipShape(Circle())
                        .overlay(
                        Circle()
                            .stroke(lineWidth: 2)
                            .fill(.white)
                        )
                }
                    
                .padding(2.5)
            Text("Deine Story")
                .font(.subheadline)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
