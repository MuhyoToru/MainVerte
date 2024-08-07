//
//  IdeasMyPublicatonsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeasMyPublicatonsView: View {

var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    ImageTextExView(
                    image: "MVBathroom02",
                    title: "Douche Jardinée",
                    subtitle: "03/06/2024",
                    isFavoriteView: false
                    )
                    
                    ImageTextExView(
                    image: "MVTipMaintenanceCleaningLeaves",
                    title: "Enlever la poussière des plantes",
                    subtitle: "07/07/2024",
                    isFavoriteView: false
                    )
                }
            }
            HStack {
                Spacer()
                NavigationLink(destination: CreateIdeaView()) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

#Preview {
    IdeasMyPublicatonsView()
}
