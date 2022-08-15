//
//  DetailDeviceInLANView.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 30.07.22.
//

import SwiftUI

struct DetailDeviceInLANView: View {
    @Binding var deviceName: String
    @Binding var ipAdress: String
    @Binding var macAdress: String
    @Binding var permBool: Bool
    
    var body: some View {
        List {
            if deviceName == "?" {
                Text("Hostname: unkown")
            } else {
                Text("Hostname: \(deviceName)")
            }
            Text("Local IP: \(ipAdress)")
            Text("Mac Adress: \(macAdress)")
            Text("Permanent IP: \(String(permBool))")
        }
    }
}
