//
//  LaunchView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 22/07/21.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
