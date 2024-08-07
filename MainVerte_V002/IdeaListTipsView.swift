//
//  IdeaListTipsView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

import SwiftUI

struct IdeaListTipsView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Idées")
                    }
                    .foregroundColor(Color.mvMediumGray)
                }
                .navigationBarBackButtonHidden(true)
                Spacer()
           }
            ScrollView {
                VStack {
                    ImageTextExView(
                    image: "MVTipMaintenancePotting",
                    title: "Rempotage: Préparation du Pot",
                    subtitle: "Marc",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                    image: "MVTipMaintenanceCleaningLeaves",
                    title: "Enlever la poussière des plantes",
                    subtitle: "Haiying",
                    isFavoriteView: false
                    )
                    NavigationLink(destination: IdeaTipDetailsView()) {
                        ImageTextExView(
                            image: "MVTipMaintenancePestControl",
                            title: "Insecte nuisible",
                            subtitle: "Oriane",
                            isFavoriteView: true
                        )
                    }
                    ImageTextExView(
                    image: "MVTipMaintenanceAbsent",
                    title: "Quand on est absent",
                    subtitle: "Zak",
                    isFavoriteView: false
                    )
                }
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaListTipsView()
}
