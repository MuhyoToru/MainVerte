//
//  IdeaQuestionViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation

class IdeaQuestionViewModel: ObservableObject {
    @Published var ideaQuestions : [IdeaQuestion] = []
    
    init() {
        ideaQuestions = [
            IdeaQuestion(
                title: "Problèmes avec Romarin",
                subtitle: "Patrice",
                images: "MVTipQuestionRomarin",
                description: "Romarin en pot envahi par des doryphores, quel traitement naturel ?",
                subCategory: "Plantes Extérieurs"),
            IdeaQuestion(
                title: "Protéger le Laurier du gel",
                subtitle: "Elisa",
                images: "MVTipQuestionLaurier",
                description: "Bonjour, j'habite dans l'Allier à la limite du Puy de Dôme et l'hiver il fait parfois très froid pendant plusieurs jours consécutifs (- 5, 6, ou 10°C). Je voudrais savoir comment entretenir un laurier-rose et lui faire passer l'hiver ? Il est dans un grand pot en terre et fait environ un mètre de circonférence et un 1,5 de hauteur. Il est sur une terrasse exposée Est-Sud et Sud-Ouest. J'ai isolé le pot avec du papier bulle et j'ai couvert la terre pot avec du papier bulle. Puis j'ai recouvert le laurier avec un film spécial acheté en jardinerie en ayant auparavant planté des tiges de bambou à l'oblique dans la terre du pot pour permettre au film de partir en forme évasée vers le haut et donner ainsi de l'aisance aux branches.",
                subCategory: "Plantes Extérieurs"),
            IdeaQuestion(
                title: "Problème de fleurs sur Courgette",
                subtitle: "Zoha",
                images: "MVTipQuestionZucchini",
                description: "J’ai deux pieds de courgettes, plantés il y a plus d'un mois, l’un dans un gros pot avec du bon terreau, l’autre directement dans la platebande avec une terre pas terrible, mais en janvier j’avais mis le compost de mon lombricomposteur, pensant bien faire. Ce sont des plants bio, achetés chez un producteur du coin. Les deux pieds ont un développement assez faible, mais surtout, ils ne font que des fleurs mâles, je n’ai donc pas encore vu le début d’un commencement d’une petite courgette. Est-ce que quelqu’un a une explication à ce phénomène ? Pourquoi n’y a-t-il pas au minimum 50% de mâles et 50% de femelles ?",
                subCategory: "Plantes Extérieurs"),
            IdeaQuestion(
                title: "Protéger le potager contre les nuisibles",
                subtitle: "Zak",
                images: "MVTipQuestionPest",
                description: "Planter des herbes aromatiques comme la menthe, le basilic et la ciboulette autour de votre potager. Ces plantes dégagent des odeurs que beaucoup de nuisibles n'aiment pas. De plus, elles sont utiles en cuisine !",
                subCategory: "Plantes Extérieurs"),
            IdeaQuestion(
                title: "Recycler l’eau résiduelle",
                subtitle: "Amandine",
                images: "MVTipQuestionRecycleWater",
                description: "Est-ce une mauvaise idée de recycler l’eau résiduelle qui a déjà été utilisée pour une autre plante ?",
                subCategory: "Plantes Intérieurs"),
            IdeaQuestion(
                title: "Si une plante est morte ?",
                subtitle: "Elie",
                images: "MVTipQuestionDeadPlant",
                description: "Comment savoir si une plante est morte ?",
                subCategory: "Plantes Intérieurs"),
            IdeaQuestion(
                title: "Problème de Moucherons",
                subtitle: "Zoha",
                images: "MVTipQuestionMidge",
                description: "Pourquoi y a-t-il des moucherons qui volent autour de mes plantes ?",
                subCategory: "Plantes Intérieurs"),
            IdeaQuestion(
                title: "Plantes ont soif",
                subtitle: "Estelle",
                images: "MVTipQuestionPlantThirsty",
                description: "Pourquoi les plantes ont-elles soif dans un bac à réserve d'eau ?",
                subCategory: "Plantes Intérieurs")
        ]
    }
}
