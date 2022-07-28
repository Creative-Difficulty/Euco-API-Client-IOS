//
//  DevicesInLAN.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 25.07.22.
//

import SwiftUI
import SwiftyJSON

struct DevicesInLAN: View {
    @Binding var JSONtoParse: String
    
    var macArray = [String]()
    var IPArray = [String]()
    var nameArray = [String]()
    @State var ConnectedDevices: Int = 0
    
    var body: some View {
        List {
            Text("Hi")
        }.onAppear {
            pushToNetworkArray()
        }
    }
    mutating func pushToNetworkArray() {
        
        let NetworkData = try? JSON(data: Data(JSONtoParse.utf8))
        
        let dataToPrint = NetworkData![0]["mac"].string!
        print(dataToPrint)
        
        let ConnectedDevices = NetworkData!.count
        var tempCountingArray = [String]()
        print(tempCountingArray.count)
        while tempCountingArray.count < ConnectedDevices {
            if tempCountingArray.count == ConnectedDevices {
                macArray.append(NetworkData![tempCountingArray.count]["mac"].string!)
                IPArray.append(NetworkData![tempCountingArray.count]["ip"].string!)
                nameArray.append(NetworkData![tempCountingArray.count]["name"].string!)
                tempCountingArray.append("0")
                break
            }
            macArray.append(NetworkData![tempCountingArray.count]["mac"].string!)
            IPArray.append(NetworkData![tempCountingArray.count]["ip"].string!)
            nameArray.append(NetworkData![tempCountingArray.count]["name"].string!)
            tempCountingArray.append("0")
            
        }
        print("stopped")
        print("Macs: \(macArray)")
        print("IPs: \(IPArray)")
        print("Names: \(nameArray)")
    }
}
