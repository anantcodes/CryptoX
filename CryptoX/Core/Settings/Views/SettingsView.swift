//
//  SettingsView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 20/07/21.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let githubURL = URL(string: "https://github.com/anantcodes")!
    let linkedinURL = URL(string: "https://www.linkedin.com/in/anantkanchan/")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/anantcodes")!
    
    var body: some View {
        NavigationView {
            List {
                cryptoxSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView{
    
    private var cryptoxSection: some View {
        Section(header: Text("CryptoX")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by Anant Kanchan.It uses MVVM Architecture, Combine and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("GitHub", destination: githubURL)
        }
    }
}
