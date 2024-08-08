//
//  FavoritesSpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesSpacesView: View {
    var ideaSpace =  IdeaSpace(
        title: "Oasis de Sérénité",
        subtitle: "Haiying",
        images: "MVBathroom01",
        description: "Transformer la salle de bain en un véritable havre de paix. L'ajout de végétation autour de la baignoire crée une ambiance apaisante et naturelle. Les plantes suspendues et les pots disposés de manière stratégique non seulement purifient l'air mais ajoutent également une touche d'esthétique organique.",
        subCategory: "Salle de bain",
        comments: [
            Comment(text: "Magnifique!", creationDate: Date(), modificationDate: Date(), image: "MVProfil01"),
            Comment(text: "J'adore cette idée!", creationDate: Date(), modificationDate: Date(), image: "MVProfil02"),
            Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil02", isCurrentUser: true)
        ]
    )
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: IdeaSpaceDetailsView(ideaSpace: ideaSpace)) {
                        ImageTextExView(
                            image: "MVBathroom01",
                            title: "Oasis de Sérénité",
                            subtitle: "Haiying",
                            isFavorite: true
                        )
                    }
                    NavigationLink(destination: IdeaSpaceDetailsView(ideaSpace: ideaSpace)) {
                        ImageTextExView(
                            image: "MVBathroom05",
                            title: "Évasion au Spa",
                            subtitle: "Pierre",
                            isFavorite: true
                        )
                    }
                    NavigationLink(destination: IdeaSpaceDetailsView(ideaSpace: ideaSpace)) {
                        ImageTextExView(
                            image: "MVGarden01",
                            title: "Jardin Apaisant",
                            subtitle: "Sofiane",
                            isFavorite: true
                        )
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesSpacesView()
}
