//
//  PortfolioView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 03/07/21.
//

import SwiftUI

struct PortfolioView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading: XMarkButton() )
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
