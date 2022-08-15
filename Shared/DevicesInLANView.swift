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
    @State var clickedOnDevice = false
    
    
    var body: some View {
        
        List {
            let NetworkStuff = pushToNetworkArray(JSONtoParse: JSONtoParse)
            let macArray: Array<String> = NetworkStuff.0
            let IPArray: Array<String> = NetworkStuff.1
            let nameArray: Array<String> = NetworkStuff.2
            let permArray: Array<Bool> = NetworkStuff.3
            let ConnectedDevices = NetworkStuff.4
            
            Text("Devices in Server LAN : \(ConnectedDevices)")
            
            ForEach (0..<IPArray.count, id: \.self) {
                NavigationLink(destination: DetailDeviceInLANView(deviceName: .constant(nameArray[$0]), ipAdress: .constant(IPArray[$0]), macAdress: .constant(macArray[$0]), permBool: .constant(permArray[$0])), isActive: $clickedOnDevice) { EmptyView() }
                Text("\(IPArray[$0])").onTapGesture {
                    clickedOnDevice.toggle()
                }
            }
            
//            ForEach(0..<macArray.count, id: \.self) { macAdress in
////                Text("\(macAdress)")
//            }
        }
    }
}

func pushToNetworkArray(JSONtoParse: String) -> (Array<String>, Array<String>, Array<String>, Array<Bool>, Int) {
    var macArray = [String]()
    var IPArray = [String]()
    var nameArray = [String]()
    var permArray = [Bool]()
    
    let NetworkData = try? JSON(data: Data(JSONtoParse.utf8))
    
//        let dataToPrint = NetworkData![0]["mac"].string!
    
    @State var ConnectedDevices: Int = NetworkData!.count
    //print(ConnectedDevices)
    
    var tempCountingArray = [String]()
    while tempCountingArray.count < ConnectedDevices {
        if tempCountingArray.count == ConnectedDevices {
            macArray.append(NetworkData![tempCountingArray.count]["mac"].string!)
            IPArray.append(NetworkData![tempCountingArray.count]["ip"].string!)
            nameArray.append(NetworkData![tempCountingArray.count]["name"].string!)
            permArray.append(NetworkData![tempCountingArray.count]["permanent"].bool!)
            tempCountingArray.append("0")
            break
        } else {
            macArray.append(NetworkData![tempCountingArray.count]["mac"].string!)
            IPArray.append(NetworkData![tempCountingArray.count]["ip"].string!)
            nameArray.append(NetworkData![tempCountingArray.count]["name"].string!)
            permArray.append(NetworkData![tempCountingArray.count]["permanent"].bool!)
            tempCountingArray.append("0")
        }
        
        
    }
    if ConnectedDevices != IPArray.count || ConnectedDevices != macArray.count || ConnectedDevices != nameArray.count {
        return (["Something went wrong!"], ["Something went wrong!"], ["Something went wrong!"], [false], 0)
    }
    
    return(macArray, IPArray, nameArray, permArray, ConnectedDevices)
    
}
