//
//  SoilModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import Foundation

class Soil {
    let id: UUID = UUID()
    let name: String
    let description: String
    let characteristics: String
    
    init(name: String, description: String, characteristics: String) {
        self.name = name
        self.description = description
        self.characteristics = characteristics
    }
}
