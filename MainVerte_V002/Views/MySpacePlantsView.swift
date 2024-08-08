//
//  MySpacePlantsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpacePlantsView: View {
    
    var mySpace : MySpace
    @State var researchText : String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }, label : {
                        Image(systemName: "chevron.left")
                        Text("Mes Espaces")
                    })
                    .foregroundColor(Color.mvMediumGray)
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                }
                .padding(.horizontal, 16)
                TitleExView(title: mySpace.name)
                ResearchAndFilterExView(researchText: $researchText)
                    .padding(.horizontal, 16)
                LineSeparatorExView()
                ScrollView {
                    ForEach(mySpace.existingPlant) { plantation in
                        PlantationButtonExView(plantation: plantation)
                    }
                }
                .padding()
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: {
                        MySpaceAddPlantView(mySpace: mySpace)
                    }, label: {
                        ActionButtonExView()
                    })
                }
            }
            .padding()
        }
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    MySpacePlantsView(mySpace: MySpace(name: "Jardin", image: "MVGarden", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.gray], exposure: Exposure.fullShade, soil: [SoilViewModel().soils[0]], interiorExterior: InteriorExterior.exterior, createdDate: Date.now, personalNotes: ""))
}
