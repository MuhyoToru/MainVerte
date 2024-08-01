//
//  DiseaseModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import Foundation

class Disease {
    let id: UUID = UUID()
    let name: String
    let image: String
    let description: String
    let cureMethod: String
    
    init(name: String, image: String, description: String, cureMethod: String) {
        self.name = name
        self.image = image
        self.description = description
        self.cureMethod = cureMethod
    }
}
