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
                    isFavoriteView: true
                    )
                    ImageTextExView(
                    image: "MVTipMaintenancePotting",
                    title: "Rempotage: Préparation du Pot",
                    subtitle: "Marc",
                    isFavoriteView: true
                    )
                    ImageTextExView(
                    image: "MVTipMaintenancePestControl",
                    title: "Insecte nuisible",
                    subtitle: "Oriane",
                    isFavoriteView: true
                    )
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesTipsView()
}
