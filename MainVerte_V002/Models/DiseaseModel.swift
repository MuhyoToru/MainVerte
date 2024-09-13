//
//  DiseaseModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import Foundation

class Disease: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let description: String
    let cureMethod: String
    
    init(id: String, name: String, image: String, description: String, cureMethod: String) {
        self.id = id
        self.name = name
        self.image = image
        self.description = description
        self.cureMethod = cureMethod
    }
}
