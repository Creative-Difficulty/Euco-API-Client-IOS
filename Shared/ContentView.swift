//
//  ContentView.swift
//  Shared
//
//  Created by Alexander Leschanz on 16.07.22.
//

import SwiftUI
import Foundation
import SwiftyJSON
import Alamofire

struct ContentView: View {
    @Binding var EucoAPIURL: String
    @Binding var EucoAPIToken: String
    
    
    let timer = Timer.publish(every: 1, tolerance: 0.2, on: .main, in: .common).autoconnect()
    //timer.upstream.connect().cancel()
    
    @State private var wrongURL = 0
    @State private var wrongToken = 0
    @State private var EucoAPIStatus = 0
    @State private var info: AlertInfo?
    @State private var Offline = false
    
    // MARK - JSON data vars
    @State private var cpuUsage = 0
    
    var body: some View {
        NavigationLink(destination: OfflineView(), isActive: $Offline) { EmptyView() }
        List {
            //Text("CPU usage: \(cpuUsage)%")
            Text("CPU uasge: \(cpuUsage)")
            Text("RAM usage: \(EucoAPIToken)")
                
        }.alert(item: $info, content: { info in
            Alert(title: Text(info.title))
        }).onReceive(timer) { time in
            if !NetworkReachabilityManager()!.isReachable {
                Offline.toggle()
                return
            }
            
            let url = URL(string: EucoAPIURL)
            var request = URLRequest(url: url!)
            request.setValue(EucoAPIToken, forHTTPHeaderField: "authentication")
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                if error != nil {
                    wrongURL = 1
                    info = AlertInfo(
                        id: .EucoAPIOnlineAlert,
                        title: "EucoAPI Server (\(EucoAPIURL)) is not online"
                    )
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
                                    cpuUsage = EucoAPIAuthdata!["cpu_usage"].int!
                                } else {
                                    EucoAPIStatus = httpResponse.statusCode
                                    info = AlertInfo(
                                        id: .EucoAPIStatusAlert,
                                        title: "EucoAPI Server \(EucoAPIURL) returned Status code: \(EucoAPIStatus)"
                                    )
                                }
                            }
                        } else {
                            wrongToken = 1
                        }
                    }
                }
                
            }.resume()
        }
    }
}
