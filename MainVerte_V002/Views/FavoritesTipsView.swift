//
//  FavoritesTipsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesTipsView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ImageTextExView(
                    image: "MVTipPlantationPotato",
                    title: "Culture Patates Gazon",
                    subtitle: "Kanita",
                    isFavorite: true
                    )
                    ImageTextExView(
                    image: "MVTipMaintenancePotting",
                    title: "Rempotage: Préparation du Pot",
                    subtitle: "Marc",
                    isFavorite: true
                    )
                    NavigationLink(destination: IdeaTipDetailsView()) {
                        ImageTextExView(
                            image: "MVTipMaintenancePestControl",
                            title: "Insecte nuisible",
                            subtitle: "Oriane",
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
    FavoritesTipsView()
}
