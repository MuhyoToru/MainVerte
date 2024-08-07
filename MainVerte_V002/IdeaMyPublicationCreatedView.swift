//
//  IdeaMyPublicationCreatedView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 06/08/2024.
//

import SwiftUI

struct IdeaMyPublicationCreatedView: View {
    let isHorizontal: Bool = true
    @Environment(\.dismiss) private var dismiss
    @State private var isEditing: Bool = false
    @State private var title: String = "Oasis de Sérénité"
    @State private var text: String = "Transformer la salle de bain en un véritable havre de paix. L'ajout de végétation autour de la baignoire crée une ambiance apaisante et naturelle. Les plantes suspendues et les pots disposés de manière stratégique non seulement purifient l'air mais ajoutent également une touche d'esthétique organique."
    @State private var image: UIImage = UIImage(named: "MVBathroom01") ?? UIImage()
    
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
            if isEditing {
                TitleExView(title: title, isEditable: true)
            } else {
                TitleExView(title: title)
            }
            ScrollView {
                if isEditing {
                    VStack {
                        ImageDescriptionExView(
                            image: image,
                            text: text,
                            isEditable: true
                        )
                    }
                } else {
                    ImageDescriptionExView(
                        image: image,
                        text: text
                    )
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    isEditing.toggle()
                }) {
                    if isEditing {
                        ActionButtonExView(action: "checkmark", isHorizontal: isHorizontal)
                    } else {
                        ActionButtonExView(action: "pencil", isHorizontal: isHorizontal)
                    }
                }
            }
            .padding(.vertical, 10)
            HStack {
                Spacer()
                Button(action: {
                    // Logique de suppression immédiate
                    dismiss() // Retour à la vue précédente ou autre action
                    // Vous pouvez également ajouter ici la logique pour supprimer les données associées à cette publication, par exemple, supprimer un élément dans une base de données.
                }) {
                    ActionButtonExView(action: "trash", isHorizontal: isHorizontal)
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaMyPublicationCreatedView()
}
