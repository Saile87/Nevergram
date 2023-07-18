//
//  NevergramApp.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 08.07.23.
//

import SwiftUI

@main
struct NevergramStreamApp: App {
    
    @StateObject private var appState = AppState()
    @StateObject private var loginViewModel = LoginViewModel(loginHandler: LoginHandlerMock())
    
    var body: some Scene {
        WindowGroup {
            Group {
                if appState.isLoggedID {
                    ContentView()
                } else {
                    LoginView(loginViewModel: loginViewModel)
                }
            }
                .environmentObject(appState)
        }
    }
}
