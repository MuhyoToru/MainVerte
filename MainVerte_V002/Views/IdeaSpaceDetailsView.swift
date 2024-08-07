//
//  IdeaSpaceDetailsView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 16/07/2024.
//

import SwiftUI

struct IdeaSpaceDetailsView: View {
    let isHorizontal: Bool = true
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
            ZStack{
                TitleExView(title: "Oasis de Sérénité")
                HStack {
                    Spacer()
                    FavoriteButtonExView()
                        .offset(y: 5)
                }
            }
            .padding(.horizontal, 5)
            ScrollView {
            ImageDescriptionExView(
                image: UIImage(named: "MVBathroom01") ?? UIImage(),
                text: "Transformer la salle de bain en un véritable havre de paix. L'ajout de végétation autour de la baignoire crée une ambiance apaisante et naturelle. Les plantes suspendues et les pots disposés de manière stratégique non seulement purifient l'air mais ajoutent également une touche d'esthétique organique."
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
            
                MessageBubbleExView(text: "Trop beau!", photo: "MVProfil01", isCurrentUser: false)
                MessageBubbleExView(text: "J'aime beaucoup", photo: "MVProfil03", isCurrentUser: false)
                MessageBubbleExView(text: "Wow!", photo: "MVProfil03", isCurrentUser: false)

            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaSpaceDetailsView()
}
