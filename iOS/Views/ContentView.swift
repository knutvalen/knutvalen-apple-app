//
//  ContentView.swift
//  iOS
//
//  Created by Knut Valen on 05/07/2024.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case frontPage
        case profile
    }

    @State private var selection: Tab = .frontPage

    var body: some View {
        TabView(selection: $selection) {
            Blog()
                .tabItem {
                    Label("Front page", systemImage: "house")
                }
                .tag(Tab.frontPage)

            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
        }
    }
}

#Preview {
    ContentView()
}
