//
//  PlantationViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation
import Observation

@Observable class PlantationViewModel {
    var plantations : [Plantation] = []
    
    init() {
        plantations = [
            Plantation(personalNotes: "", plantedDate: Date.now, plant: PlantViewModel().plants[0], container: PlantContainer.inGround)
        ]
    }
}
