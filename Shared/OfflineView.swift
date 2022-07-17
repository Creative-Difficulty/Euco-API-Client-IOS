//
//  OfflineView.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 17.07.22.
//

import SwiftUI

struct OfflineView: View {
    var body: some View {
        ZStack {
            Color(.systemBlue).ignoresSafeArea()
            
            VStack {
                    Text("You are offline")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

struct OfflineView_Previews: PreviewProvider {
    static var previews: some View {
        OfflineView()
    }
}
