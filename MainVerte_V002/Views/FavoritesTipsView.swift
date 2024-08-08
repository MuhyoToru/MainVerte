//
//  FavoritesTipsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesTipsView: View {
    var ideaTip = IdeaTip(
        title: "Insecte nuisible",
        subtitle: "Oriane",
        images: "MVTipMaintenancePestControl",
        description: "Les insectes, peuvent coloniser les plantes d’intérieur. Le savon insecticide, un produit naturel, est un traitement efficace et facile à utiliser. Pour débarrasser vos végétaux des cochenilles, tamponnez les tiges et les feuilles avec une boule de coton imbibée d’alcool, une fois par semaine jusqu’à disparition complète. D’autre part, lorsque des moucherons fongiques tournent autour de vos plantes, c’est le signe manifeste que celles-ci sont trop arrosées.",
        subCategory: "Entretien"
    )
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    NavigationLink(destination: IdeaTipDetailsView(ideaTip: ideaTip)) {
                        ImageTextExView(
                            image: "MVTipPlantationPotato",
                            title: "Patates Gazon",
                            subtitle: "Kanita",
                            isFavorite: true
                        )
                    }
                    NavigationLink(destination: IdeaTipDetailsView(ideaTip: ideaTip)) {
                        ImageTextExView(
                            image: "MVTipMaintenancePotting",
                            title: "Préparation du Pot",
                            subtitle: "Marc",
                            isFavorite: true
                        )
                    }
                    NavigationLink(destination: IdeaTipDetailsView(ideaTip: ideaTip)) {
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
