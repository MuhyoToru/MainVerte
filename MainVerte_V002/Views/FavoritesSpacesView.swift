//
//  FavoritesSpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesSpacesView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: IdeaSpaceDetailsView()) {
                        ImageTextExView(
                            image: "MVBathroom01",
                            title: "Oasis de Sérénité",
                            subtitle: "Haiying",
                            isFavoriteView: true
                        )
                    }
                    ImageTextExView(
                    image: "MVBathroom05",
                    title: "Évasion au Spa",
                    subtitle: "Pierre",
                    isFavoriteView: true
                    
                    )
                    ImageTextExView(
                    image: "MVGarden01",
                    title: "Jardin Apaisant",
                    subtitle: "Sofiane",
                    isFavoriteView: true
                    )
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesSpacesView()
}
