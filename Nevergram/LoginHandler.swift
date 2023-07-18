//
//  LoginHandler.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 18.07.23.
//

import Foundation

protocol LoginHandler {
    func login(username: String, password: String) -> Bool
}

class LoginHandlerMock: LoginHandler {
    func login(username: String, password: String) -> Bool {
        return username == "Elias" && password == "123"
    }
}
