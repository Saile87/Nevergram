//
//  SecureField.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 17.07.23.
//

import SwiftUI


struct SecureInputField: View {
    
    @Binding private var text: String
    @State private var isSecured = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self._text = text
        self.title = title
    }
    
    var body: some View {
        ZStack(alignment: .trailing) {
            if isSecured {
                SecureField(title, text: $text)
            } else {
                TextField(title, text: $text)
            }
            Button(action: {
                withAnimation {
                    isSecured.toggle()
                }
            }, label: {
                Image(systemName: isSecured ? "eye.slash" : "eye")
                    .tint(.gray)
            })
        }
    }
}


struct ContentView_Previews6: PreviewProvider {
    static var previews: some View {
        SecureInputField("Passwort", text: .constant("Admin123"))
    }
}
