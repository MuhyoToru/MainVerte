//
//  SoilModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import Foundation

class Soil : Identifiable, Equatable, Codable {
    let id: UUID /*= UUID()*/
    let name: String
    let description: String
    let characteristics: String
    
    init(id: UUID, name: String, description: String, characteristics: String) {
        self.id = id
        self.name = name
        self.description = description
        self.characteristics = characteristics
    }
    
    static func == (lhs: Soil, rhs: Soil) -> Bool {
        return
            lhs.name == rhs.name &&
            lhs.description == rhs.description &&
            lhs.characteristics == rhs.characteristics
    }
}
