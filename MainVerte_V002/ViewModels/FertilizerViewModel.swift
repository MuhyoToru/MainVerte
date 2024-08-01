//
//  FertilizerViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

@Observable class FertilizerViewModel {
    var fertilizers : [Fertilizer] = []
    
    init() {
        fertilizers = [
            Fertilizer(name: "Composte", description: "Déchets organiques décomposés, riche en matière organique, améliore la structure du sol et fournit des nutriments."),
            Fertilizer(name: "Fumier", description: "Excréments d'animaux décomposés, riche en azote, phosphore et potassium, améliore la fertilité du sol."),
            Fertilizer(name: "Engrais vert", description: "Plantes cultivées et enfouies pour enrichir le sol, améliore la structure et ajoute de l'azote."),
            Fertilizer(name: "Farine d'os", description: "Riche en phosphore et calcium, améliore la croissance des racines et la floraison."),
            Fertilizer(name: "Guano", description: "Excréments d'oiseaux marins ou de chauves-souris, riche en azote et phosphore, utilisé comme amendement rapide."),
            Fertilizer(name: "Tourteau de ricin", description: "Résidu de l'extraction d'huile de ricin, riche en azote, phosphore et potassium, utilisé comme engrais et répulsif pour certains nuisibles."),
            Fertilizer(name: "Algues marines", description: "Riche en oligo-éléments, améliore la résistance des plantes aux maladies et stress."),
            Fertilizer(name: "Farine de sang", description: "Riche en azote, favorise la croissance des feuilles et des tiges."),
            Fertilizer(name: "Engrais azoté", description: "Contient de l'azote, favorise la croissance végétative, ex: nitrate d'ammonium."),
            Fertilizer(name: "Engrais phosphaté", description: "Contient du phosphore, favorise la croissance des racines et la floraison, ex: superphosphate."),
            Fertilizer(name: "Engrais potassique", description: "Contient du potassium, améliore la résistance aux maladies et la qualité des fruits, ex: sulfate de potassium."),
            Fertilizer(name: "Engrais complet", description: "Contient des proportions équilibrées d'azote, phosphore et potassium, ex: 10-10-10."),
            Fertilizer(name: "Engrais soluble", description: "Engrais dissous dans l'eau, rapidement disponible pour les plantes, utilisé pour les applications foliaires ou l'irrigation."),
            Fertilizer(name: "Engrais à libération lente", description: "Libère les nutriments sur une période prolongée, réduit les risques de brûlure des plantes, ex: granulés enrobés d'urée."),
            Fertilizer(name: "Engrais foliaire", description: "Appliqué directement sur les feuilles, fournit des nutriments rapidement absorbés par la plante."),
            Fertilizer(name: "Dolomie", description: "Riche en calcium et magnésium, améliore le pH du sol et fournit des nutriments essentiels."),
            Fertilizer(name: "Gypse", description: "Contient du calcium et du soufre, améliore la structure du sol et la croissance des racines."),
            Fertilizer(name: "Roche phosphatée", description: "Source naturelle de phosphore, utilisé principalement dans les sols acides."),
            Fertilizer(name: "Engrais mycorhizien", description: "Contient des spores de champignons mycorhiziens, améliore l'absorption des nutriments et l'eau par les racines."),
            Fertilizer(name: "Vermicompost", description: "Produit par les vers de terre, riche en nutriments et microbes bénéfiques pour le sol."),
            Fertilizer(name: "Thé de composte", description: "Liquide obtenu à partir de l'infusion de compost, utilisé comme fertilisant liquide et stimulant microbien."),
            Fertilizer(name: "Engrais liquide universel", description: "Formulé pour une large gamme de plantes, généralement équilibré en NPK."),
            Fertilizer(name: "Engrais liquide pour plantes fleuries", description: "Contient plus de phosphore pour encourager la floraison."),
            Fertilizer(name: "Engrais liquide pour légumes", description: "Équilibré pour répondre aux besoins spécifiques des plantes potagères.")
        ]
    }
}
