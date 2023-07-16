//
//  PostModels.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 12.07.23.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var user: String
    var userImage: String
    var profilPicture: String
    var description: String
    var likes: Int
}
