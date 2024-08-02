//
//  DiseaseViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

@Observable class DiseaseViewModel {
    var diseases : [Disease] = []
    
    init() {
        diseases = [
            Disease(name: "Mildiou", image: "MVMildew", description: "Provoque l'apparition de taches vertes pâles à brunes qui s'étendent peu à peu. Les tissus finissent par se dessécher", cureMethod: "Semer ou planter à bonne distance pour favoriser la circulation de l'air et aérer régulièrement les abris. Certains conseillent d'espacer les plants d'1 mètre car le champignon se développera moins facilement.")
        ]
    }
}
