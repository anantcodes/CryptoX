//
//  CircleButtonAnimationView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 19/06/21.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @State var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none )
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: false)
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
