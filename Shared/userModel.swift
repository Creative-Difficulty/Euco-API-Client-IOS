//
//  userModel.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 16.07.22.
//

import Foundation
import SwiftUI

struct User: Codable, Identifiable {
    let username: String
    let name: String
    var id: Int
}
