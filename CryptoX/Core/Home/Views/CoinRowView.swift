//
//  CoinRowView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 19/06/21.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    
    var body: some View {
        Text(coin.name)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin)
    }
}
