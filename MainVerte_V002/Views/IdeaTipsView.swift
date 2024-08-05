//
//  IdeaTipsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaTipsView: View {
    @Binding var showModal: Bool

    var body: some View {
        VStack{
            ScrollView {
                VStack(alignment: .leading){
                        ComposedImagesExView(
                            leftImage: "MVTipPlantationPotato",
                            topImage: "MVTipPlantationShrub",
                            bottomImage: "MVTipPlantationSalad",
                            rightImage: "MVTipPlantationHortensia",
                            title: "Plantation",
                            subtitle: "15 Astuces"
                        )
                    NavigationLink(destination: IdeaListTipsView()) {
                        ComposedImagesExView(
                            leftImage: "MVTipMaintenancePotting",
                            topImage: "MVTipMaintenanceCleaningLeaves",
                            bottomImage: "MVTipMaintenancePestControl",
                            rightImage: "MVTipMaintenanceAbsent",
                            title: "Entretien",
                            subtitle: "4 Astuces"
                        )
                    }
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        showModal = true
                    }
                }) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 12)
    }
}

//#Preview {
//    IdeaTipsView()
//}
