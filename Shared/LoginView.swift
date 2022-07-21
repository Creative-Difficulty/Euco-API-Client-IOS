//
//  LoginView.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 17.07.22.
//

import SwiftUI
import SwiftyJSON

struct LoginView: View {
    @State private var EucoAPIURL = ""
    @State private var EucoAPIToken = ""
    @State private var wrongURL = 0
    @State private var wrongToken = 0
    @State private var loginCompleted = false
    @State private var loggedIn = false
    @State private var EucoAPIStatus = 0
    @State private var EucoAPIStatusAlert = false
    
    
    var body: some View {
    NavigationView {
        VStack {
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
                    .border(.red, width: CGFloat(wrongURL))
                
                SecureField("EucoAPI Token", text: $EucoAPIToken)
                    .padding()
                    .frame(width:300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongToken))
                
                Button("Authenticate") {
                    authenticateUser(EucoAPIURL: EucoAPIURL, EucoAPIToken: EucoAPIToken)
                    
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
            }
            NavigationLink(destination: ContentView(), isActive: $loggedIn) { EmptyView() }
        }.alert("EucoAPI Server (\(EucoAPIURL)) returned Status code: \(EucoAPIStatus)", isPresented: $EucoAPIStatusAlert) {
                    Button("OK", role: .cancel) { }
        }
    }
    .navigationBarHidden(true)
        
    }
}

func authenticateUser(EucoAPIURL: String, EucoAPIToken: String) {
    wrongToken = 0
    wrongURL = 0
    
    guard let url = URL(string: EucoAPIURL) else {
        wrongURL = 1
        return
        
    }
    
    var request = URLRequest(url: url)
    request.setValue(EucoAPIToken, forHTTPHeaderField: "authentication")
    URLSession.shared.dataTask(with: request) { (data, response, error) in
        if error != nil {
            wrongURL = 1
            return
        }
        
        if let data = data {
            if let base64Data = String(data: data, encoding: .utf8) {
                if Data(base64Encoded: base64Data) == nil {
                    wrongToken = 1
                    return
                }
                let decodedData = Data(base64Encoded: base64Data)!
                let decodedString = String(data: decodedData, encoding: .utf8)!
                let EucoAPIAuthdata = try? JSON(data: Data(decodedString.utf8))
                print(EucoAPIAuthdata!["success"].bool!)
                if EucoAPIAuthdata!["success"].bool! == true {
                    if let httpResponse = response as? HTTPURLResponse {
                        if httpResponse.statusCode == 200 {
                            loggedIn = true
                        } else {
                            EucoAPIStatus = httpResponse.statusCode
                            EucoAPIStatusAlert = true
                        }
                    }
                } else {
                    wrongToken = 1
                }
            }
        }
        
    }.resume()
    print(loggedIn)
}
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
