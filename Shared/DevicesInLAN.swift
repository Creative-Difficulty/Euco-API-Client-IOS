//
//  DevicesInLAN.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 25.07.22.
//

import SwiftUI
import SwiftyJSON

struct DevicesInLAN: View {
    @Binding var JSONDevicesInLAN: JSON
    
    var body: some View {
        Text("Hello")
            .onAppear {
                print(JSONDevicesInLAN)
        }
    }
}
