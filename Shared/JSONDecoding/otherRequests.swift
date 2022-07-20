//
//  otherRequests.swift
//  Euco API Client IOS (iOS)
//
//  Created by Alexander Leschanz on 20.07.22.
//

import Foundation

struct otherRequestJSON: Decodable {
    let success: Bool
    let time: String
    let req_counter: Int
    let cpu_usage: Double
    let devices_in_network: [devicesInNetwork]
    let performance_test: Double
    let SIdata: SIdata
}

struct devicesInNetwork: Decodable {
    let name: String
    let ip: String
    let mac: String
}

struct SIdata: Decodable {
    let audio: [Audio]
}

struct Audio: Decodable {
    let id: String
    let name: String
}
