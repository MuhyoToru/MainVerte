//
//  SoilViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation
import Observation

@Observable class SoilViewModel {
    var soils : [Soil] = []
    
    init() {
        soils = [
            Soil(id : UUID(), name: "Argileux", description: "Lourd, compact, se réchauffe lentement au printemps, retient bien l'eau et les nutriments.", characteristics: "Collant lorsqu'il est humide, fissure en séchant, difficile à travailler."),
            Soil(id : UUID(), name: "Sableux", description: "Léger, bien drainé, se réchauffe rapidement au printemps, pauvre en nutriments.", characteristics: "Granuleux, sec rapidement après la pluie, facile à travailler."),
            Soil(id : UUID(), name: "Limoneux", description: "Texture fine, riche en nutriments, retient bien l'eau, mais avec un bon drainage.", characteristics: "Lisse au toucher, friable, facile à travailler."),
            Soil(id : UUID(), name: "Humifère", description: "Riche en matière organique, excellent pour la rétention d'eau et de nutriments, bien aéré.", characteristics: "Noir ou brun foncé, léger et spongieux, sent bon la terre."),
            Soil(id : UUID(), name: "Calcaire", description: "Léger, bien drainé, souvent pierreux, alcalin.", characteristics: "Blanc ou pâle, friable, peut provoquer la chlorose des plantes sensibles aux pH élevés."),
            Soil(id : UUID(), name: "Tourbeux", description: "Riche en matière organique, acide, retient bien l'eau, souvent utilisé pour améliorer d'autres sols.", characteristics: "Noir ou brun foncé, spongieux, retient beaucoup d'humidité."),
            Soil(id : UUID(), name: "Argilo-Limoneux", description: "Mélange équilibré d'argile et de limon, retient bien l'eau et les nutriments, facile à travailler.", characteristics: "Fertile, bonne structure, bien drainé."),
            Soil(id : UUID(), name: "Alluvial", description: "Déposé par les cours d'eau, riche en nutriments, bien drainé.", characteristics: "Variable, souvent fertile, bon pour l'agriculture."),
            Soil(id : UUID(), name: "Volcanique", description: "Formé à partir de cendres volcaniques, riche en minéraux, bien drainé.", characteristics: "Fertile, noir ou brun, bonne capacité de rétention d'eau."),
            Soil(id : UUID(), name: "Salin", description: "Contient une concentration élevée de sels solubles, souvent infertile.", characteristics: "Blanc ou grisâtre, peut brûler les racines des plantes sensibles.")
        ]
    }
}
