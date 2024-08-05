//
//  MySpaceViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

@Observable class MySpaceViewModel {
    var mySpaces: [MySpace] = []
    
    init() {
        mySpaces = [
            MySpace(name: "Jardin", image: "MVGarden01", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.gray], exposure: .fullShade, soil: [SoilViewModel().soils[0]], interiorExterior: .exterior, createdDate: Date.now, personalNotes: ""),
            MySpace(name: "Potager", image: "MVRose", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.gray], exposure: .fullShade, soil: [SoilViewModel().soils[0]], interiorExterior: .exterior, createdDate: Date.now, personalNotes: ""),
            MySpace(name: "Balcon", image: "MVGarden02", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.blue, .red], exposure: .partialShade, soil: [SoilViewModel().soils[0]], interiorExterior: .exterior, existingPlant: [PlantationViewModel().plantations[0]], createdDate: Date.now, personalNotes: "")
        ]
    }
}
