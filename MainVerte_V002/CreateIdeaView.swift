//
//  CreateIdeaView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

import SwiftUI

struct CreateIdeaView: View {
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
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
            Spacer()
            NavigationLink(destination: IdeaQuestionDetailsView()) {
                ActionButtonExView(action: "checkmark")
                        }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.bottom, 20)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .frame(height: UIScreen.main.bounds.height * 0.75)
        .background(Color.mvLightGreen)
        .cornerRadius(20)
        .transition(.move(edge: .bottom))
        .animation(.spring(), value: showModal)
    }
}

#Preview {
    CreateIdeaView(showModal: .constant(true))
}
