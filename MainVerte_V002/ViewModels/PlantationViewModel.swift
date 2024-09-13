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
            Plantation(personalNotes: "Ceci est une note personnel", plantedDate: Date.now, plant: Plant(id: UUID().uuidString, name: "Test", scientificName: "Test", image: "MVTomato", description: "Test", size: 1, startSowingDate: .april, endSowingDate: .april, startBloomDate: .april, endBloomDate: .april, minTemperature: 1, maxTemperature: 1, wateringFrequency: 1, wateringQuantity: 1, spacing: 1, plantingMethod: "Test", startHarvestDate: .april, endHarvestDate: .april, colors: [.red], difficulty: "Test", fertilizers: [], diseases: [], exposures: [.fullShade], soils: [SoilViewModel().soils[0]], interiorExterior: [.exterior], containers: [.inGround]), container: PlantContainer.inGround)
        ]
    }
}
