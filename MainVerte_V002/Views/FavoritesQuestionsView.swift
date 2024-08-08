//
//  FavoritesQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesQuestionsView: View {
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
                    ImageTextExView(
                        image: "MVTipQuestionDeadPlant",
                        title: "Si une plante est morte ?",
                        subtitle: "Elie",
                        isFavorite: true
                    )
                    ImageTextExView(
                        image: "MVTipQuestionRomarin",
                        title: "Romarin envahi par doryphores",
                        subtitle: "Patrice",
                        isFavorite: true
                    )
                    NavigationLink(destination: IdeaSpaceDetailsView(ideaSpace: ideaSpace)) {
                        ImageTextExView(
                            image: "MVTipQuestionPest",
                            title: "Romarin envahi par doryphores",
                            subtitle: "Patrice",
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
    FavoritesQuestionsView()
}
