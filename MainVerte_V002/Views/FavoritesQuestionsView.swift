//
//  FavoritesQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesQuestionsView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ImageTextExView(
                    image: "MVTipQuestionDeadPlant",
                    title: "Si une plante est morte ?",
                    subtitle: "Élie",
                    isFavoriteView: true
                    )
                    ImageTextExView(
                    image: "MVTipQuestionRomarin",
                    title: "Romarin envahi par doryphores",
                    subtitle: "Patrice",
                    isFavoriteView: true
                    )
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesQuestionsView()
}
