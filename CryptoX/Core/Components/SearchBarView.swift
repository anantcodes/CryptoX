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
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
