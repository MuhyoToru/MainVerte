//
//  IdeasMyPublicatonsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeasMyPublicatonsView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 5) {
                    NavigationLink(destination: IdeaSpaceDetailsView(ideaSpace: IdeaSpace(
                        title: "Douche Jardinée",
                        subtitle: "03/06/2024",
                        images: "MVBathroom02",
                        description: "Les vignes verdoyantes apportent fraîcheur et sérénité à la douche, créant un environnement naturel et apaisant.",
                        subCategory: "Bathroom"
                    ))) {
                        ImageTextExView(
                            image: "MVBathroom02",
                            title: "Douche Jardinée",
                            subtitle: "03/06/2024"
//                            isFavorite: false
                        )
                    }
                    NavigationLink(destination: IdeaTipDetailsView(ideaTip: IdeaTip(
                        title: "Enlever Poussière",
                        subtitle: "07/07/2024",
                        images: "MVTipMaintenanceCleaningLeaves",
                        description: "Un chiffon imbibé de bière blonde pour faire briller les feuilles tout en les débarrassant de la poussière. Un truc qu’utilisent régulièrement les fleuristes pour redonner de l’éclat aux plantes et garantir une couleur bien verte. Attention, tout de même, à essuyer avec délicatesse, une main en renfort derrière la feuille pour éviter d’abîmer la plante. Les feuilles des plantes vertes aiment aussi le lait. On prépare un mélange moitié eau, moitié lait, avant d’en imbiber un chiffon pour essuyer les feuilles une par une, toujours avec délicatesse. Les jardinier·e·s les plus patient·e·s pourront terminer par un lustrage en règle avec un chiffon doux pour booster la brillance des plantes.",
                        subCategory: "Maintenance"
                    ))) {
                        ImageTextExView(
                            image: "MVTipMaintenanceCleaningLeaves",
                            title: "Enlever Poussière",
                            subtitle: "07/07/2024"
                        )
                    }
                }
            }
            HStack {
                Spacer()
                NavigationLink(destination: CreateIdeaView()) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

#Preview {
    IdeasMyPublicatonsView()
}
