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
    
    var body: some View {
        ZStack {
            VStack {
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
                        MySpaceAddPlantView()
                    }, label: {
                        ActionButtonExView()
                    })
                }
            }
            .padding()
        }
        .background(BackgroundExView(opacity: 0.8))
    }
}

#Preview {
    MySpacePlantsView(mySpace: MySpace(name: "Jardin", image: "MVGarden", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.gray], exposure: Exposure.fullShade, soil: [SoilViewModel().soils[0]], interiorExterior: InteriorExterior.exterior, createdDate: Date.now, personalNotes: ""))
}
