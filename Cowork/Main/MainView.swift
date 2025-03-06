//
//  MainView.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 06.03.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            Text("Event")
                .tabItem {
                    Label("Event", systemImage: "ticket")
                }
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Booked")
                .tabItem {
                    Label("Booked", systemImage: "list.dash.header.rectangle")
                }
            Text("Favofite")
                .tabItem {
                    Label("Favofite", systemImage: "bookmark")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
