//
//  ContentView.swift
//  Shared
//
//  Created by Alexander Leschanz on 16.07.22.
//

import SwiftUI
struct ContentView: View {
    let timer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    @State private var counter = 0

    var body: some View {
        List {
            Text("Hi")
        }.navigationTitle("Utility")
            .onReceive(timer) { time in
                print("The time is now \(time)")
                counter += 1
//                    if counter == 5 {
//                        timer.upstream.connect().cancel()
//                    } else {
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
