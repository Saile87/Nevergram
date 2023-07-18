//
//  LoginViewModel.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 18.07.23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var username = ""
    @Published var password = ""
    private var loginHandler: LoginHandler
    
    init(loginHandler: LoginHandler) {
        self.loginHandler = loginHandler
    }
    func login() -> Bool {
        return loginHandler.login(username: username, password: password)
    }
}
