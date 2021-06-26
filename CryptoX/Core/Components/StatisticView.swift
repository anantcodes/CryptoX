//
//  StatisticView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 26/06/21.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        Text(stat.title)
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(stat: dev.stat1)
    }
}
