//
//  MySpacePlantDetailsViewControllerRepresentable.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 05/08/2024.
//

import SwiftUI

struct MySpacePlantDetailsViewControllerRepresentable: UIViewControllerRepresentable {
    let plantation: Plantation
    let spacing : CGFloat
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let finalViewController = MySpacePlantDetailsViewController()
        
        finalViewController.plantation = plantation
        finalViewController.spacing = spacing
        
        return finalViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Nothing for the moment
    }
}

#Preview {
    MySpacePlantDetailsViewControllerRepresentable(plantation: Plantation(personalNotes: "Ceci est une note personnel", plantedDate: Date.now, plant: Plant(id: UUID().uuidString, name: "Test Nom", scientificName: "Test Nom Scientifique", image: "MVTomato", description: "Ceci est une description", size: 1, startSowingDate: .april, endSowingDate: .april, startBloomDate: .april, endBloomDate: .april, minTemperature: 1, maxTemperature: 1, wateringFrequency: 1, wateringQuantity: 1, spacing: 1, plantingMethod: "Ceci est une méthode de plantation", startHarvestDate: .april, endHarvestDate: .april, colors: [], difficulty: "Facile", fertilizers: [], diseases: [], exposures: [], soils: [], interiorExterior: [], containers: []), container: PlantContainer.inGround), spacing: 10)
}
