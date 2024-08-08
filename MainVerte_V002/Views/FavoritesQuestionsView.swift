//
//  FavoritesQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesQuestionsView: View {
    var ideaQuestion =  IdeaQuestion(
        title: "Problèmes avec Romarin",
        subtitle: "Patrice",
        images: "MVTipQuestionRomarin",
        description: "Romarin en pot envahi par des doryphores, quel traitement naturel ?",
        subCategory: "Plantes Extérieurs")
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: IdeaQuestionDetailsView(ideaQuestion: ideaQuestion)) {
                        ImageTextExView(
                            image: "MVTipQuestionDeadPlant",
                            title: "Plante est morte ?",
                            subtitle: "Elie",
                            isFavorite: true
                        )
                    }
                    NavigationLink(destination: IdeaQuestionDetailsView(ideaQuestion: ideaQuestion)) {
                        ImageTextExView(
                            image: "MVTipQuestionRomarin",
                            title: "Romarin envahi par doryphores",
                            subtitle: "Patrice",
                            isFavorite: true
                        )
                    }
                    NavigationLink(destination: IdeaQuestionDetailsView(ideaQuestion: ideaQuestion)) {
                        ImageTextExView(
                            image: "MVTipQuestionPest",
                            title: "Protéger Potager",
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
