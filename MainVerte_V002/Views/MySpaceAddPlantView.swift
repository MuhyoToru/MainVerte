//
//  MySpaceAddPlantView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpaceAddPlantView: View {
    
    @State var selection : Int = 0
    @State var researchText : String = ""
    
    var body: some View {
            VStack {
                TitleExView(title: "Ajouter une plante")
                VStack(spacing : 16) {
                    SegmentedButtonsExView(selection: $selection, tabs: ["Déjà Présente", "Rechercher", "Propositions"])
                    if selection == 1 {
                        ResearchAndFilterExView(researchText: $researchText)
                    }
                }
                .padding(.horizontal, 16)
                LineSeparatorExView()
                ScrollView {
                    
                }
            }
            .background(BackgroundExView(opacity: 0.8))
    }
}

#Preview {
    MySpaceAddPlantView()
}
