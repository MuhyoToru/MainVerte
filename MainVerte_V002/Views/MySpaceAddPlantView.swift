//
//  MySpaceAddPlantView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpaceAddPlantView: View {
    
    var mySpace : MySpace
    
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
                        Text("Mes Plantes")
                    })
                    .foregroundColor(Color.mvMediumGray)
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                }
                .padding(.horizontal, 16)
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
                    switch selection {
                    case 0 :
                        MySpaceAddPlantAlreadyHereView(mySpace : mySpace)
                    case 1 :
                        MySpaceAddPlantSearchView()
                    default :
                        MySpaceAddPlantProposalView()
                    }
                }
                .padding(.horizontal, 16)
            }
            .background(BackgroundExView(opacity: 0.8))
    }
}

#Preview {
    MySpaceAddPlantView(mySpace: MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .exterior, createdDate: Date.now, personalNotes: ""))
}
