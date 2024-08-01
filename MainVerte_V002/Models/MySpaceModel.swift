//
//  MySpaceModel.swift
//  MainVerte
//
//  Created by Haiying on 19/07/2024.
//

import SwiftUI
import Foundation

class MySpace : Identifiable {
    let id: UUID = UUID()
    var name: String
    var image: String
    var city: String
    var difficulty: String
    var area: Double
    var acceptedFauna: Bool
    var color: [Color]
    var exposure: Exposure
    var soil: [Soil]
    var interiorExterior: InteriorExterior
    var existingPlant: [Plantation] = []
    var createdDate: Date
    var personalNotes: String
    
    init(name: String, image: String, city: String, difficulty: String, area: Double, acceptedFauna: Bool, color: [Color], exposure: Exposure, soil: [Soil], interiorExterior: InteriorExterior, existingPlant: [Plantation], createdDate: Date, personalNotes: String) {
        self.name = name
        self.image = image
        self.city = city
        self.difficulty = difficulty
        self.area = area
        self.acceptedFauna = acceptedFauna
        self.color = color
        self.exposure = exposure
        self.soil = soil
        self.interiorExterior = interiorExterior
        self.existingPlant = existingPlant
        self.createdDate = createdDate
        self.personalNotes = personalNotes
    }
    
    init(name: String, image: String, city: String, difficulty: String, area: Double, acceptedFauna: Bool, color: [Color], exposure: Exposure, soil: [Soil], interiorExterior: InteriorExterior, createdDate: Date, personalNotes: String) {
        self.name = name
        self.image = image
        self.city = city
        self.difficulty = difficulty
        self.area = area
        self.acceptedFauna = acceptedFauna
        self.color = color
        self.exposure = exposure
        self.soil = soil
        self.interiorExterior = interiorExterior
        self.createdDate = createdDate
        self.personalNotes = personalNotes
    }
}
