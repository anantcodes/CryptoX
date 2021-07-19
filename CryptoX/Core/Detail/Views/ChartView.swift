//
//  ChartView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 19/07/21.
//

import SwiftUI

struct ChartView: View {
    
    let data: [Double]
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
    }
    
    
    var body: some View {
        Path { path in
            for index in data.indices {
                
                let xPosition = UIScreen.main.bounds.width / CGFloat(data.count) * CGFloat(index + 1)
                
                
                if index == 0 {
                    path.move(to: CGPoint(x: 0, y: 0))
                }
                path.addLine(to: CGPoint(x: xPosition, y: 0))
                
            }
        }
        .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
