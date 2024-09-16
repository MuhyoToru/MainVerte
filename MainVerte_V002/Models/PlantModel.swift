//
//  PlantModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import SwiftUI
import Foundation

class Plant : Codable, Identifiable {
    let id: String
    let name: String
    let scientificName: String
    let image: String
    let description: String
    let size: Double
    let startSowingDate: Month?
    let endSowingDate: Month?
    let startBloomDate: Month?
    let endBloomDate: Month?
    let minTemperature: Double
    let maxTemperature: Double
    let wateringFrequency: Int
    let wateringQuantity: Double
    let spacing: Double
    let plantingMethod: String
    let startHarvestDate: Month?
    let endHarvestDate: Month?
    let colors: [Color]?
    let difficulty: String
    let fertilizers: [Fertilizer]?
    let diseases: [Disease]?
    let exposures: [Exposure]?
    let soils: [Soil]?
    let interiorExterior: [InteriorExterior]?
    let containers: [PlantContainer]?
    
    init(id: String, name: String, scientificName: String, image: String, description: String, size: Double, startSowingDate: Month, endSowingDate: Month, startBloomDate: Month, endBloomDate: Month, minTemperature: Double, maxTemperature: Double, wateringFrequency: Int, wateringQuantity: Double, spacing: Double, plantingMethod: String, startHarvestDate: Month, endHarvestDate: Month, colors: [Color], difficulty: String, fertilizers: [Fertilizer], diseases: [Disease], exposures: [Exposure], soils: [Soil], interiorExterior: [InteriorExterior], containers: [PlantContainer]) {
        self.id = id
        self.name = name
        self.scientificName = scientificName
        self.image = image
        self.description = description
        self.size = size
        self.startSowingDate = startSowingDate
        self.endSowingDate = endSowingDate
        self.startBloomDate = startBloomDate
        self.endBloomDate = endBloomDate
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
        self.wateringFrequency = wateringFrequency
        self.wateringQuantity = wateringQuantity
        self.spacing = spacing
        self.plantingMethod = plantingMethod
        self.startHarvestDate = startHarvestDate
        self.endHarvestDate = endHarvestDate
        self.colors = colors
        self.difficulty = difficulty
        self.fertilizers = fertilizers
        self.diseases = diseases
        self.exposures = exposures
        self.soils = soils
        self.interiorExterior = interiorExterior
        self.containers = containers
    }
}
