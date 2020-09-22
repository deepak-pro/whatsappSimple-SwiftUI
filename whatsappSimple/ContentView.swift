//
//  ContentView.swift
//  whatsappSimple
//
//  Created by Deepak JOSHI on 22/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }.tag(0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
