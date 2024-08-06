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
    MySpacePlantDetailsViewControllerRepresentable(plantation: Plantation(personalNotes: "Ceci est une note personnel", plantedDate: Date.now, plant: PlantViewModel().plants[0], container: PlantContainer.inGround), spacing: 10)
}
