//
//  IdeaSpaceViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation

class IdeaSpaceViewModel: ObservableObject {
    @Published var ideaSpaces : [IdeaSpace] = []
    
    init() {
        ideaSpaces = [
            IdeaSpace(
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
            ),
            IdeaSpace(
                title: "Douche Jardinée",
                subtitle: "Estelle",
                images: "MVBathroom02",
                description: "Les vignes verdoyantes apportent fraîcheur et sérénité à la douche, créant un environnement naturel et apaisant.",
                subCategory: "Salle de bain"
            ),
            IdeaSpace(
                title: "Douche Botanique", subtitle: "Aurélien",
                images: "MVBathroom03",
                description: "Un rebord de salle de bain transformé en mini jardin avec des fougères et des plantes feuillues dans des pots variés, apportant une touche de nature et de sérénité à l'espace.",
                subCategory: "Salle de bain"
            ),
            IdeaSpace(
                title: "Douche Élégance Monochrome",
                subtitle: "Audrey",
                images: "MVBathroom04",
                description: "Cette douche moderne et élégante intègre des plantes suspendues au-dessus de la douche, créant une ambiance de jungle urbaine. Les parois sombres en béton ciré contrastent avec la verdure, tandis que les équipements en laiton ajoutent une touche raffinée.",
                subCategory: "Salle de bain"
            ),
            IdeaSpace(
                title: "Évasion au Spa",
                subtitle: "Pierre",
                images: "MVBathroom05",
                description: "Cette salle de bain lumineuse et spacieuse offre un véritable havre de paix. Des plantes en pot de différentes tailles ajoutent de la fraîcheur et de la vitalité à l'espace, tandis que les plantes suspendues complètent l'ensemble en ajoutant une dimension verticale.",
                subCategory: "Salle de bain"
            ),
            IdeaSpace(
                title: "Jardin Apaisant",
                subtitle: "Sofiane",
                images: "MVGarden01",
                description: "Ce coin repas extérieur est niché dans un jardin intime, entouré de plantes tropicales et d'orchidées. Une grande table ronde en métal, accompagnée de chaises assorties, offre un espace convivial pour les repas en plein air. La verdure dense et les murs en pierre créent une ambiance intime et sereine.",
                subCategory: "Jardin"
            ),
            IdeaSpace(
                title: "Mur Végétal et Nichoirs",
                subtitle: "Décoratif et Fonctionnel",
                images: "MVGarden02",
                description: "Ce mur végétal décoratif combine la beauté des plantes suspendues avec des nichoirs colorés, ajoutant une touche de charme et de fonctionnalité au jardin. Les plantes grimpantes et les fleurs entourent les nichoirs, créant une scène vivante et accueillante pour les oiseaux.",
                subCategory: "Jardin"
            ),
            IdeaSpace(
                title: "Entrée Verdoyante",
                subtitle: "Élégante et Bien Entretenue",
                images: "MVGarden03",
                description: "L'entrée de ce jardin est ornée de plantes succulentes et de buissons taillés, offrant un accueil verdoyant et bien entretenu. Les allées pavées et les murs blancs modernes contrastent avec la verdure, créant une transition élégante entre l'intérieur et l'extérieur.",
                subCategory: "Jardin"
            ),
            IdeaSpace(
                title: "Jardin Zen",
                subtitle: "Tranquillité et Harmonie",
                images: "MVGarden04",
                description: "Ce jardin zen met en valeur de hauts bambous dorés, créant une atmosphère apaisante et harmonieuse. Les chemins en gravier serpentent à travers les bambous, offrant un espace de méditation et de tranquillité. Les pierres et les plantes sculpturales complètent l'esthétique minimaliste et équilibrée.",
                subCategory: "Jardin"
            )
        ]
    }
}



