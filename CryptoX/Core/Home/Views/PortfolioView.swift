//
//  PortfolioView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 03/07/21.
//

import SwiftUI

struct PortfolioView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: CoinModel? = nil
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(spacing: 10) {
                            ForEach(vm.allCoins) { coin in
                                CoinLogoView(coin: coin)
                                    .frame(width: 75)
                                    .padding(4)
                                    .onTapGesture {
                                        withAnimation(.easeIn) {
                                            selectedCoin = coin
                                        }
                                    }
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(selectedCoin?.id == coin.id ? Color.theme.green : Color.clear
                                                    , lineWidth: 1)
                                            
                                    )
                            }
                        }
                        .padding(.vertical, 4)
                        .padding(.leading)
                    })
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}
