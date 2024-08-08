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
                title: "Romarin",
                subtitle: "Patrice",
                images: "MVTipQuestionRomarin",
                description: "Romarin en pot envahi par des doryphores, quel traitement naturel ?",
                subCategory: "Plantes Extérieurs",
                comments: [
                    Comment(text: "Pour débarrasser mon romarin de ses chrysomèles, je l'ai taillé de manière à ce qu'aucune pousse ne touche le sol, et posé une bande de glue sur la tige. De cette façon, les pousses sont isolées des insectes venant du sol.J'ai ensuite enlevé tous les chrysomèles du feuillage du romarin, en vérifiant pendant quelques jours que je n'en avais pas oublié. Depuis, mon romarin est débarrassé de ces petites bêtes, alors que ma sauge située à coté, à laquelle je n'ai rien fait, est toujours colonisée. Je vais maintenant appliquer le même traitement à la sauge pour confirmer, j'espère, son efficacité.", creationDate: Date(), modificationDate: Date(), image: "MVProfil01"),
                    Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil02", isCurrentUser: true)
                ],
                isFavorite: true
            ),
            IdeaQuestion(
                title: "Laurier",
                subtitle: "Elisa",
                images: "MVTipQuestionLaurier",
                description: "Bonjour, j'habite dans l'Allier à la limite du Puy de Dôme et l'hiver il fait parfois très froid pendant plusieurs jours consécutifs (- 5, 6, ou 10°C). Je voudrais savoir comment entretenir un laurier-rose et lui faire passer l'hiver ? Il est dans un grand pot en terre et fait environ un mètre de circonférence et un 1,5 de hauteur. Il est sur une terrasse exposée Est-Sud et Sud-Ouest. J'ai isolé le pot avec du papier bulle et j'ai couvert la terre pot avec du papier bulle. Puis j'ai recouvert le laurier avec un film spécial acheté en jardinerie en ayant auparavant planté des tiges de bambou à l'oblique dans la terre du pot pour permettre au film de partir en forme évasée vers le haut et donner ainsi de l'aisance aux branches. Je me pose la question de l'arrosage de la plante en dehors des jours de gel. Dois-je l'arroser pendant la période hivernale ?",
                subCategory: "Plantes Extérieurs",
                comments: [
                    Comment(text: "Non vous n'avez pas besoin de l'arroser pendant la période hivernale, bien au contraire, plus le substrat, le terreau sera humide plus le point de gelée sera atteint, cela veut dire qu'avec un substrat sec le laurier-rose supportera des températures de quelques degrés inférieure, de toute façon il est en période de repos végétatif, assurez vous simplement que le différentiel de température procuré par votre protection permet de le garder au dessus de -7 C°, cette règle d'une terre sèche vaut aussi pour les Cactées et autres plantes grasses : ceux-çi supporteront d'autant mieux une période de froid que la terre est sèche, dans les tissus c'est l'eau contenue qui fait éclater les cellules de la plante en gelant.", creationDate: Date(), modificationDate: Date(), image: "MVProfil04"),
                    Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil03", isCurrentUser: true)
                ]
            ),
            IdeaQuestion(
                title: "Fleurs Courgette",
                subtitle: "Zoha",
                images: "MVTipQuestionZucchini",
                description: "J’ai deux pieds de courgettes, plantés il y a plus d'un mois, l’un dans un gros pot avec du bon terreau, l’autre directement dans la platebande avec une terre pas terrible, mais en janvier j’avais mis le compost de mon lombricomposteur, pensant bien faire. Ce sont des plants bio, achetés chez un producteur du coin. Les deux pieds ont un développement assez faible, mais surtout, ils ne font que des fleurs mâles, je n’ai donc pas encore vu le début d’un commencement d’une petite courgette. Est-ce que quelqu’un a une explication à ce phénomène ? Pourquoi n’y a-t-il pas au minimum 50% de mâles et 50% de femelles ?",
                subCategory: "Plantes Extérieurs",
                comments: [
                    Comment(text: "Votre paillage a l'air un peu fin il ne garde peut être pas assez l'humidité. Les courgettes aiment l'eau et la chaleur. Je n'ai jamais essayé en pot mais vu le volume final de la plante adulte c'est peut être un peu petit. Vous pouvez essayer de rajouter un peu de compost sous le paillage pour donner un peu de peps: à chaque arosage l'eau se chargera des nutriments du compost en surface pour la descendre jusqu'au racines. Faite de gros arosage bien espacés plutôt que des petits fréquents pour obliger les plantes à développer leur racines. Et après un peu de patience et les courgettes devraient arriver !", creationDate: Date(), modificationDate: Date(), image: "MVProfil04"),
                    Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil01", isCurrentUser: true)
                ]
            ),
            IdeaQuestion(
                title: "Protéger Potager",
                subtitle: "Zak",
                images: "MVTipQuestionPest",
                description: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?",
                subCategory: "Plantes Extérieurs",
                comments: [
                    Comment(text: "Planter des herbes aromatiques comme la menthe, le basilic et la ciboulette autour de votre potager. Ces plantes dégagent des odeurs que beaucoup de nuisibles n'aiment pas. De plus, elles sont utiles en cuisine !", creationDate: Date(), modificationDate: Date(), image: "MVProfil02"),
                    Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil04", isCurrentUser: true)
                ],
                isFavorite: true
            ),
            IdeaQuestion(
                title: "Eau résiduelle",
                subtitle: "Amandine",
                images: "MVTipQuestionRecycleWater",
                description: "Est-ce une mauvaise idée de recycler l’eau résiduelle qui a déjà été utilisée pour une autre plante ?",
                subCategory: "Plantes Intérieurs",
                comments: [
                    Comment(text: "Vous ne devriez pas. Vous pouvez transmettre des spores pathologiques. Vous pouvez transmettre de l'eau d'engrais chargée de sel qui sera préjudiciable car elle s'accumule. Les cellules végétales ont des vacuoles tout comme nos cellules et elles se débarrassent des excréments, ce qui n'est pas sain de verser dans la plante. Bien sûr, vous pouvez probablement vous en sortir pendant un certain temps, mais vous devez éliminer tout ce problème de la plante avec de grands volumes d'eau périodiquement.", creationDate: Date(), modificationDate: Date(), image: "MVProfil02"),
                    Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil03", isCurrentUser: true)
                ]
            ),
            IdeaQuestion(
                title: "Plante est morte ?",
                subtitle: "Elie",
                images: "MVTipQuestionDeadPlant",
                description: "Comment savoir si une plante est morte ?",
                subCategory: "Plantes Intérieurs",
                comments: [
                    Comment(text: "Dans le cas où la chute des feuilles ne serait pas soignée, elle pourrait causer la mort de la plante. Si cette dernière se retrouve avec un feuillage complètement brun, cela ne signifie pas forcément qu’elle doit finir à la poubelle. Il vaut mieux donc vous assurer que votre plante est encore vivante avant de la jeter ou d’entreprendre une opération de sauvetage quelconque. Pour ce faire, grattez la base de la tige. Celle-ci doit dévoiler une couche verte indiquant que plante est bien en vie. En revanche, une tige sèche qui se casse facilement signifie que le végétal est mort.", creationDate: Date(), modificationDate: Date(), image: "MVProfil03"),
                    Comment(text: "Merci!", creationDate: Date(), modificationDate: Date(), image: "MVProfil03", isCurrentUser: true)
                ],
                isFavorite: true
            ),
            IdeaQuestion(
                title: "Moucherons",
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
