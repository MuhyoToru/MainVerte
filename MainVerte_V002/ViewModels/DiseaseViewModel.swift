//
//  DiseaseViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

@Observable class DiseaseViewModel {
    var diseases : [Disease] = []
    
    init() {
        diseases = [
            Disease(name: "Test", image: "test", description: "test", cureMethod: "test")
        ]
    }
}
