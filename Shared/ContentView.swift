//
//  ContentView.swift
//  Shared
//
//  Created by Alexander Leschanz on 16.07.22.
//

import SwiftUI
struct ContentView: View {
    
    //@State var users: [User] = []

    var body: some View {
        List {
            Text("Hi!")
        }.navigationTitle("Utility")
//        List(users) { user in
//
//                Text(user.username)
//                    .font(.headline)
//                Text(user.name)
//                    .font(.subheadline)
//        }
//            .onAppear {
//                apiCall().getUsers { (users) in
//                    self.users = users
//                }
//            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
