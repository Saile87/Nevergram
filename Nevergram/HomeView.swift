//
//  HomeView.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 09.07.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        List {
            StoriesView()
        }
        .listStyle(PlainListStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct StoriesView: View {
    
    
    
    @State private var stories = [
    Story(user: "Fuchs", image: "fuchs"),
    Story(user: "Bär", image: "bär"),
    Story(user: "Löwe", image: "löwe"),
    Story(user: "Geist", image: "geist"),
    Story(user: "Bär", image: "bär"),
    Story(user: "Drache", image: "drache"),
    Story(user: "Geist", image: "geist"),
    Story(user: "Elias", image: "elias")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(stories) { story in
                    StoryItem(story: story)
                }
            }
        }
    }
}

struct StoryItem: View {
    
    var story: Story
    
    var body: some View {
        VStack {
            Image(story.image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .background {
                    
                }
        }
    }
}

struct HomeView_Previews2: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
