//
//  ContentView.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 08.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopView()
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                Text("New")
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                Text("Reels")
                    .tabItem {
                        Image(systemName: "video.square")
                    }
                Text("Profil")
                    .tabItem {
                        Image(systemName: "person.circle")
                    }
            }
            .tint(.black)
        }
    }
}

private struct TopView: View {
    var body: some View {
        HStack {
            Text("Nevergram")
                .font(.custom("AmericanTypewriter", size: CGFloat(30)))
                .padding(.leading)
            Image(systemName: "chevron.down")
                .font(.footnote)
            Spacer()
            Image(systemName: "heart")
                .font(.title2)
            Image(systemName: "paperplane")
                .font(.title2)
                .padding(.horizontal)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

