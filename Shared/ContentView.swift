//
//  ContentView.swift
//  Shared
//
//  Created by Alexander Leschanz on 16.07.22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @Binding var EucoAPIURL: String
    @Binding var EucoAPIToken: String
    var cpuUsage = 34.289
    let timer = Timer.publish(every: 1, tolerance: 0.2, on: .main, in: .common).autoconnect()
    //timer.upstream.connect().cancel()
    
    var body: some View {
        List {
            //Text("CPU usage: \(cpuUsage)%")
            Text("Euco API URL: \(EucoAPIURL)")
            Text("Euco API Token: \(EucoAPIToken)")
        }.onReceive(timer) { time in
            print("recieved")
        }
    }
}
