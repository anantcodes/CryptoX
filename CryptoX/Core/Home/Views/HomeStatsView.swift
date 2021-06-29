//
//  HomeStatsView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 29/06/21.
//

import SwiftUI

struct HomeStatsView: View {
    
    let statistics: [StatisticModel] = [
        StatisticModel(title: "Title", value: "Value", percentageChange: 1),
        StatisticModel(title: "Title", value: "Value"),
        StatisticModel(title: "Title", value: "Value"),
        StatisticModel(title: "Title", value: "Value", percentageChange: -7),
    ]
    
    var body: some View {
        HStack {
            ForEach(statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
    }
}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatsView()
    }
}
