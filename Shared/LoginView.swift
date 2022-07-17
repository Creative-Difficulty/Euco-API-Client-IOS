//
//  LoginView.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 17.07.22.
//

import SwiftUI

struct LoginView: View {
    @State private var EucoAPIURL = ""
    @State private var EucoAPIToken = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var loginCompleted = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("EucoAPI URL", text: $EucoAPIURL)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("EucoAPI Token", text: $EucoAPIToken)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Authenticate") {
                        authenticateUser(username: EucoAPIURL, password: EucoAPIToken)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("logged in!"), isActive: $loginCompleted) {
                        EmptyView()
                    }
                }
            }
        }.navigationBarHidden(true)
    }
    func authenticateUser(username: String, password: String) {
            if username.lowercased() == "hello" && password.lowercased() == "hello" {
                wrongUsername = 0
                wrongPassword = 0
                loginCompleted = true
            } else {
                if username.lowercased() == "hello" {
                    wrongPassword = 2
                } else if password.lowercased() == "hello" {
                    wrongUsername = 2
                } else {
                    wrongPassword = 2
                    wrongUsername = 2
                }
            }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}