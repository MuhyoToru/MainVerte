//
//  IdeaTipViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

class IdeaTipViewModel: ObservableObject {
    @Published var ideaTips : [IdeaTip] = []
    
    init() {
        ideaTips = [
            IdeaTip(
                title: "Culture Patates Gazon",
                subtitle: "Kanita",
                images: "MVTipPlantationPotato",
                description: "Une alternative intéressante à la méthode traditionnelle est la culture des pommes de terre sous gazon. C’est une technique qui demande moins de travail et qui donne des résultats tout aussi bons, voire meilleurs. Commencez par choisir un endroit bien ensoleillé, puis déposez vos tubercules sur le sol. Recouvrez-les ensuite d’une couche de gazon tondue d’environ 15 cm d’épaisseur. L’avantage de cette méthode est qu’elle permet d’éviter le buttage et limite le besoin d’arrosage tout en enrichissant le sol.",
                subCategory: "Plantation"
            ),
            IdeaTip(
                title: "Planter Arbustes",
                subtitle: "Sophian",
                images: "MVTipPlantationShrub",
                description: "Creusez un trou de plantation qui offre aux racines suffisamment d’espace pour se développer. Le trou de plantation doit être environ deux fois plus grand que la motte de racines. Ameublissez bien le fond du trou avec une houe ou une bêche. si le sol est particulièrement ferme ou argileux, placez un peu de gravier au fond du trou de plantation en guise de drainage. Le sol sera ainsi plus perméable et les racines seront bien alimentées. Détachez délicatement la motte de racines du conteneur. Ensuite, aérez un peu les fines racines capillaires au bord de la motte en retirant la terre. Procédez avec précaution, car les racines capillaires sont à la fois sensibles et importantes pour un approvisionnement optimal en nutriments de l’arbuste. Raccourcissez les racines longues et plus fortes avec des cisailles. Placez l’arbuste dans le trou de mise en terre. La motte de racines doit se trouver en dessous du niveau du sol, et non au-dessus. ",
                subCategory: "Plantation"
            ),
            IdeaTip(
                title: "Semer la salade efficacement",
                subtitle: "Sophie",
                images: "MVTipPlantationSalad",
                description: "Pour les salades, il est recommandé d’opter pour un sol riche en matière organique et bien drainé. Un mélange de compost et de terreau horticole peut être idéal pour nourrir vos plants tout au long de leur croissance.Désherbez le terrain soigneusement et bêchez-le légèrement pour aérer la terre. N’oubliez pas d’ajouter une bonne dose de compost ou fumier bien décomposé pour enrichir votre sol. Testez l’acidité du sol avec un pH-mètre : les salades apprécient les terres neutres (pH entre 6 et 7). Les graines doivent être semées à faible profondeur, environ 1 cm sous la surface du sol. Espacez-les d’environ 10 cm puis recouvrez-les délicatement de terre. Arrosez ensuite régulièrement sans détremper le sol.",
                subCategory: "Plantation"
            ),
            IdeaTip(
                title: "Planter Hortensias",
                subtitle: "Ambre",
                images: "MVTipPlantationHortensia",
                description: "La plantation des hortensias nécessite quelques étapes clés pour garantir leur croissance et leur santé. Commencez par enlever les mauvaises herbes et les débris du site de plantation. Ensuite, creusez un trou deux fois plus large et aussi profond que la motte de racines de votre hortensia. Si votre sol est pauvre en nutriments, vous pouvez l'enrichir en ajoutant du compost ou de la matière organique.Assurez-vous de désherber soigneusement la zone de plantation pour éliminer toute concurrence pour les nutriments et l'eau. Si les racines de votre hortensia sont enchevêtrées ou trop longues, vous pouvez les tailler légèrement pour encourager une meilleure croissance. Coupez les racines endommagées ou mortes avec des sécateurs propres. Avant de planter, trempez les racines de votre hortensia dans de l'eau tiède pendant environ 30 minutes. ",
                subCategory: "Plantation"
            ),
            IdeaTip(
                title: "Rempotage: Préparation du Pot",
                subtitle: "Marc",
                images: "MVTipMaintenancePotting",
                description: "Le pot doit contenir un trou et son diamètre doit être légèrement supérieur à l’ancien pot. Un pot trop grand risque de perturber la plante et elle serait complètement désorientée. Si vous avez choisi un pot en terre cuite, prenez le temps de le faire tremper dans l’eau, durant une heure au moins avant le rempotage. Il faut penser à couvrir le trou avec un caillou ou un morceau de pot cassé pour que les racines n’obstruent pas le pot. Déposez ensuite au fond du pot un lit de graviers ou de billes d’argile sur une épaisseur de 3 à 4 cm, cela permet d’obtenir une couche drainante. Une bonne astuce consiste à mettre sur la couche de graviers ou de billes d’argile un feutre drainant pour éviter que ce lit se mélange à la terre par la suite. Le morceau de feutre doit être imputrescible et perméable. Déposez au-dessus de la couche drainante quelques centimètres de terreau que vous aurez choisi avec soin pour qu’il soit parfaitement adapté à votre plante.",
                subCategory: "Entretien"
            ),
            IdeaTip(
                title: "Enlever la poussière des plantes",
                subtitle: "Estelle",
                images: "MVTipMaintenanceCleaningLeaves",
                description: "Un chiffon imbibé de bière blonde pour faire briller les feuilles tout en les débarrassant de la poussière. Un truc qu’utilisent régulièrement les fleuristes pour redonner de l’éclat aux plantes et garantir une couleur bien verte. Attention, tout de même, à essuyer avec délicatesse, une main en renfort derrière la feuille pour éviter d’abîmer la plante. Les feuilles des plantes vertes aiment aussi le lait. On prépare un mélange moitié eau, moitié lait, avant d’en imbiber un chiffon pour essuyer les feuilles une par une, toujours avec délicatesse. Les jardinier·e·s les plus patient·e·s pourront terminer par un lustrage en règle avec un chiffon doux pour booster la brillance des plantes.",
                subCategory: "Entretien"
            ),
            IdeaTip(
                title: "Insecte nuisible",
                subtitle: "Oriane",
                images: "MVTipMaintenancePestControl",
                description: "Les insectes, peuvent coloniser les plantes d’intérieur. Le savon insecticide, un produit naturel, est un traitement efficace et facile à utiliser. Pour débarrasser vos végétaux des cochenilles, tamponnez les tiges et les feuilles avec une boule de coton imbibée d’alcool, une fois par semaine jusqu’à disparition complète. D’autre part, lorsque des moucherons fongiques tournent autour de vos plantes, c’est le signe manifeste que celles-ci sont trop arrosées.",
                subCategory: "Entretien"
            ),
            IdeaTip(
                title: "Arroser pendant Vacances",
                subtitle: "Zak",
                images: "MVTipMaintenanceAbsent",
                description: "Utiliser de la laine imbibée. Placez une grande bassine d'eau en hauteur sur une chaise, et reliez le fil de laine de la bassine jusqu'au cœur de chaque plante. Par capillarité, vos plantes recevront un apport d'eau régulier et seront épanouies à votre retour de vacances. Si vous avez une grande surface à arroser, optez pour un système automatique goutte-à-goutte. Procurez-vous des kits d'arrosage goutte-à-goutte automatisés et programmés, et équipez-en chaque pot, en procédant aux réglages en fonction des besoins de chaque plante, puis en les reliant à un programmateur raccordé à la robinetterie. Les Oyas sont des diffuseurs d'eau en argile très appréciés. Enterrez-les près de vos plantations et remplissez-les d'eau. Ces pots en céramique micro-poreuse laissent échapper l'eau progressivement, permettant aux plantes d'absorber l'humidité dont elles ont besoin.",
                subCategory: "Entretien"
            )
        ]
    }
}
