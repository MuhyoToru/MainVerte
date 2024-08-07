//
//  ContentView.swift
//  MainVerte
//
//  Created by Pierre on 15/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var mySpacesViewModel = MySpaceViewModel()
    
    var body: some View {
        TabView {
            Group {
                MySpacesView()
                    .tabItem {
                        Label("Espace", systemImage: "house")
                    }
                ListPlantsView()
                    .tabItem {
                        Label("Plante", systemImage: "leaf")
                    }
                IdeasView()
                    .tabItem {
                        Label("Idée", systemImage: "lightbulb")
                    }
                FavoritesView()
                    .tabItem {
                        Label("Favori", systemImage: "heart")
                    }
                MyAccountView()
                    .tabItem {
                        Label("Profil", systemImage: "person")
                    }
            }
            .toolbarBackground(Color("MVVeryDarkGreen"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .environmentObject(mySpacesViewModel)
    }
}

#Preview {
    ContentView()
}
