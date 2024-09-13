//
//  FavoritesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesView: View {
    
    @State private var researchText = ""
    @State private var segmentedSelection = 0
    let tabs: [String] = ["Espaces", "Astuces", "Questions", "Plantes"]

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    SegmentedButtonsExView(selection: $segmentedSelection, tabs: tabs)
                        .padding()
                    ResearchAndFilterExView(researchText: $researchText)
                        .padding(.horizontal, 16)
                    LineSeparatorExView()
                    
                    switch segmentedSelection {
                    case 0:
                        FavoritesSpacesView()
                    case 1:
                        FavoritesTipsView()
                    case 2:
                        FavoritesQuestionsView()
                    default:
                        FavoritesPlantsView()
                    }
                }
            }
            .background(BackgroundExView(opacity: 0.9))
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(IdeaSpaceViewModel())
}
