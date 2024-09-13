//
//  ListPlantsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct ListPlantsView: View {

    @State var researchText : String = ""
    var plantViewModel : PlantViewModel = PlantViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                TitleExView(title: "Recherche de Plante")
                ResearchAndFilterExView(researchText: $researchText)
                    .padding(.horizontal, 16)
                LineSeparatorExView()
                ScrollView {
                    VStack(spacing : 16) {
                        ForEach(plantViewModel.plants) { plant in
                            PlantButtonExView(plant: plant)
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .background(BackgroundExView(opacity: 0.9))
        }
    }
}

#Preview {
    ListPlantsView()
}
