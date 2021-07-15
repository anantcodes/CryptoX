//
//  DetailView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 15/07/21.
//

import SwiftUI

struct DetailView: View {
    
    let coin: CoinModel
    
    var body: some View {
        Text(coin.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
