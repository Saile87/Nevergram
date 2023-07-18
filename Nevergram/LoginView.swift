//
//  LoginScreen.swift
//  Nevergram
//
//  Created by Elias Breitenbach on 17.07.23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var loginViewModel: LoginViewModel
    
    var body: some View {
        VStack {
            ImageView()
            InputView(loginViewModel: loginViewModel)
        }
    }
}

private struct InputView: View {
    
    @ObservedObject var loginViewModel: LoginViewModel
    
    var body: some View {
        VStack {
            Group {
                UsernameTextField(username: $loginViewModel.username)
                PasswordTextField(password: $loginViewModel.password)
            }.padding()
                .padding(.horizontal)
            HStack {
                Spacer()
                LoginButton(loginViewModel: loginViewModel)
                
            }
        }
        .padding()
        .neumoprhismStyle()
        .padding()
    }
}

private struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        HStack {
            Image(systemName: "person")
            TextField("Bentuzername", text: $username)
                .padding(.leading, 10)
        }
    }
}

private struct PasswordTextField: View {
    
    @Binding var password: String
    
    var body: some View {
        HStack {
            Image(systemName: "lock")
            SecureInputField("Passwort", text: $password)
                .padding(.leading, 10)
        }
    }
}

private struct LoginButton: View {
    
    @ObservedObject var loginViewModel: LoginViewModel
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        Button(action: {
            appState.isLoggedID = loginViewModel.login()
        }, label: {
            Text("Anmelden")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        })
    }
}

private struct ImageView: View {
    var body: some View {
        Image("Logo")
            .resizable()
            .scaledToFit()
            .frame(width: 350, height: 250)
        
    }
}

struct ContentView_Previews5: PreviewProvider {
    static var previews: some View {
        LoginView(loginViewModel: LoginViewModel(loginHandler: LoginHandlerMock()))
            .environmentObject(AppState())
    }
}
