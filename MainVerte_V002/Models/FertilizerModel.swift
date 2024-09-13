//
//  FertilizerModel.swift
//  MainVerte
//
//  Created by Pierre on 18/07/2024.
//

import Foundation

class Fertilizer : Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    
    init(id: String, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}
