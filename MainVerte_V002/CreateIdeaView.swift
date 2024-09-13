//
//  CreateIdeaView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

import SwiftUI

struct CreateIdeaView: View {
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
                    .foregroundColor(Color.mvVeryDarkGreen)
                }
                .navigationBarBackButtonHidden(true)
                Spacer()
           }
            .padding(.horizontal)
            TitleExView(title: "Créer une Publication")
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40)
                    .foregroundStyle(.mvLightGreen)
                VStack {
                    VStack(spacing: 24) {
                        ButtonAddExView(
                            text: "Ajouter une Photo",
                            iconName: "camera"
                        )
                        ButtonAddExView(
                            text: "Ajouter Description",
                            iconName: "pencil"
                        )
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 40)
                    .padding(.leading, 24)
                    Spacer()
                    NavigationLink(destination: IdeaMyPublicationCreatedView()) {
                        ActionButtonExView(action: "checkmark")
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
            }
        }
        .background(BackgroundExView(opacity: 0.5))
    }
}

#Preview {
    CreateIdeaView()
}

#Preview {
    CreateIdeaView()
}
