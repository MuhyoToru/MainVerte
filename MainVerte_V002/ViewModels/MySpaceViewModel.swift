//
//  MySpaceViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation
import Observation

class MySpaceViewModel : ObservableObject{
    @Published var mySpaces: [MySpace] = []
    
    init() {
        mySpaces = [
            MySpace(name: "Balcon", image: "MVGarden02", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.blue, .red], exposure: .partialShade, soil: [SoilViewModel().soils[0]], interiorExterior: .exterior, existingPlant: [PlantationViewModel().plantations[0]], createdDate: Date.now, personalNotes: ""),
        ]
    }
}
