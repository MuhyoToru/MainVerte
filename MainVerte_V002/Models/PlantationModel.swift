//
//  PlantationModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import Foundation

class Plantation: Identifiable {
    let id: UUID = UUID()
    var personalNotes: String
    var plantedDate: Date
    var plant: Plant
    var container: PlantContainer
    
    init(personalNotes: String, plantedDate: Date, plant: Plant, container: PlantContainer) {
        self.personalNotes = personalNotes
        self.plantedDate = plantedDate
        self.plant = plant
        self.container = container
    }
}
