//
//  CreateSpaceAddPlantView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 06/08/2024.
//

import SwiftUI

struct CreateSpaceAddPlantView: View {
    
    @State var selection : Int = 0
    @State var researchText : String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    dismiss()
                }, label : {
                    Image(systemName: "chevron.left")
                    Text("Créer un Espace")
                })
                .foregroundColor(Color.mvMediumGray)
                .navigationBarBackButtonHidden(true)
                Spacer()
            }
            .padding(.horizontal, 16)
            TitleExView(title: "Ajouter une plante")
            VStack(spacing : 16) {
                SegmentedButtonsExView(selection: $selection, tabs: ["Rechercher", "Propositions"])
            }
            .padding(.horizontal, 16)
            if selection == 0 {
                ResearchAndFilterExView(researchText: $researchText)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 16)
            }
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40)
                    .foregroundStyle(.mvLightGreen)
                ScrollView {
                    switch selection {
                    case 0 :
                        CreateSpaceAddPlantSearchView()
                    default :
                        CreateSpaceAddPlantProposalView()
                    }
                }
                .padding()
            }
        }
        .background(BackgroundExView(opacity: 0.5))
    }
}

#Preview {
    CreateSpaceAddPlantView()
}
