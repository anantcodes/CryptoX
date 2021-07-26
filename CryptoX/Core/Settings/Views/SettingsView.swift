//
//  SettingsView.swift
//  CryptoX
//
//  Created by Anant Kanchan on 20/07/21.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let githubURL = URL(string: "https://github.com/anantcodes/CryptoX")!
    let linkedinURL = URL(string: "https://www.linkedin.com/in/anantkanchan/")!
    let personalURL = URL(string: "https://github.com/anantcodes")!
    
    var body: some View {
        NavigationView {
            List {
                cryptoxSection
                developerSection
                applicationSection
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
            HStack() {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("An iOS application for the users to keep a track of their cryptocurrency portfolio.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("GitHub", destination: githubURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            HStack() {
                Image("developer")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Anant Kanchan - iOS Developer")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit GitHub", destination: personalURL)
            Link("Visit LinkedIn", destination: linkedinURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Privacy Policy", destination: URL(string: "https://github.com/anantcodes/CryptoX")!)
            Link("Learn More", destination: URL(string: "https://en.wikipedia.org/wiki/Cryptocurrency")!)
        }
    }
}
