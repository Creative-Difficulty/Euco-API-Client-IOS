//
//  OfflineView.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 24.07.22.
//

import SwiftUI

struct OfflineView: View {
    var body: some View {
        VStack {
            Image(systemName: "wifi.slash").font(.system(size: 60))
            Text("You are offline, restart EucoAPI to try again").font(.system(size: 30))
        }.navigationBarBackButtonHidden(true)
    }
}

struct OfflineView_Previews: PreviewProvider {
    static var previews: some View {
        OfflineView()
    }
}
