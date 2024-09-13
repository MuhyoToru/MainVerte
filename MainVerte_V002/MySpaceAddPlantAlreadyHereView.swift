//
//  MySpaceAddPlantAlreadyHereView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 06/08/2024.
//

import SwiftUI

struct MySpaceAddPlantAlreadyHereView: View {
    
    var mySpace : MySpace
    
    var body: some View {
        ForEach(mySpace.existingPlant) { plantation in
            AddPlantExView(plant : plantation.plant)
        }
    }
}

#Preview {
    MySpaceAddPlantAlreadyHereView(mySpace: MySpace(name: "Test", image: "Test", city: "Test", difficulty: "Test", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .exterior, createdDate: Date.now, personalNotes: "Test"))
}
