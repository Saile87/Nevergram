//
//  ViewExtension.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 17.07.23.
//

import SwiftUI

extension View {
    func neumoprhismStyle() -> some View {
        self
            .background(.white)
            .cornerRadius(25)
            .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 10)
    }
}
