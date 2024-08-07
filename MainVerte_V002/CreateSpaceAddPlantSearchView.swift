//
//  CreateSpaceAddPlantSearchView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 06/08/2024.
//

import SwiftUI

struct CreateSpaceAddPlantSearchView: View {
    
    var plantViewModel = PlantViewModel()
    
    var body: some View {
        ForEach(plantViewModel.plants) { plant in
            AddPlantExView(plant: plant)
        }
    }
}

#Preview {
    CreateSpaceAddPlantSearchView()
}
