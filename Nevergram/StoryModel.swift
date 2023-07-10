//
//  StoryModel.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 09.07.23.
//

import Foundation

struct Story: Identifiable {
    var id = UUID()
    var user: String
    var image: String
}
