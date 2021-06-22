//
//  SearchBarView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 22/06/21.
//

import SwiftUI

struct SearchBarView: View {
    
    
    @State var searchText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.theme.SecondaryText)
            
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.accent)
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.15),
                        radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .preferredColorScheme(.dark)
    }
}
