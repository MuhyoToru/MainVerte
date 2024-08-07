//
//  MySpaceAddPlantProposalView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 06/08/2024.
//

import SwiftUI

struct MySpaceAddPlantProposalView: View {
    var body: some View {
        AddPlantExView(plant: Plant(
            name: "Oignon",
            scientificName: "",
            image: "MVOnion",
            description: "Ceci est une description",
            size: 0,
            startSowingDate: .july,
            endSowingDate: .april,
            startBloomDate: .april,
            endBloomDate: .april,
            minTemperature: 0,
            maxTemperature: 0,
            wateringFrequency: 0,
            wateringQuantity: 0,
            spacing: 0,
            plantingMethod: "",
            startHarvestDate: .april,
            endHarvestDate: .april,
            colors: [],
            difficulty: "",
            fertilizers: [],
            diseases: [],
            exposures: [],
            soils: [],
            interiorExterior: [],
            containers: []
        ))
        AddPlantExView(plant: Plant(
            name: "Choux",
            scientificName: "",
            image: "MVCabbage",
            description: "Ceci est une description",
            size: 0,
            startSowingDate: .july,
            endSowingDate: .april,
            startBloomDate: .april,
            endBloomDate: .april,
            minTemperature: 0,
            maxTemperature: 0,
            wateringFrequency: 0,
            wateringQuantity: 0,
            spacing: 0,
            plantingMethod: "",
            startHarvestDate: .april,
            endHarvestDate: .april,
            colors: [],
            difficulty: "",
            fertilizers: [],
            diseases: [],
            exposures: [],
            soils: [],
            interiorExterior: [],
            containers: []
        ))
        AddPlantExView(plant: Plant(
            name: "Lavande",
            scientificName: "",
            image: "MVLavender",
            description: "Ceci est une description",
            size: 0,
            startSowingDate: .july,
            endSowingDate: .april,
            startBloomDate: .april,
            endBloomDate: .april,
            minTemperature: 0,
            maxTemperature: 0,
            wateringFrequency: 0,
            wateringQuantity: 0,
            spacing: 0,
            plantingMethod: "",
            startHarvestDate: .april,
            endHarvestDate: .april,
            colors: [],
            difficulty: "",
            fertilizers: [],
            diseases: [],
            exposures: [],
            soils: [],
            interiorExterior: [],
            containers: []
        ))
    }
}

#Preview {
    MySpaceAddPlantProposalView()
}
