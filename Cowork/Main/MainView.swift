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
            HomeView()
                 .tabItem {
                     Label("Home", systemImage: "house")
                 }
            Text("Event")
                .tabItem {
                    Label("Event", systemImage: "ticket")
                }
            Text("Booked")
                .tabItem {
                    Label("Booked", systemImage: "list.dash.header.rectangle")
                }
            FavoriteView()
                .tabItem {
                    Label("Favofite", systemImage: "bookmark")
                }
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
