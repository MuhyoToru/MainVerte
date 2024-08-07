//
//  ImageDescriptionExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

import SwiftUI

struct ImageDescriptionExView: View {
    let image: UIImage
    let text: String
    var isEditable: Bool = false

    @State private var currentImage: UIImage
    @State private var currentText: String

    init(image: UIImage, text: String, isEditable: Bool = false) {
        self.image = image
        self.text = text
        self.isEditable = isEditable
        _currentImage = State(initialValue: image)
        _currentText = State(initialValue: text)
    }
    
    var body: some View {
        VStack {
            if isEditable {
                VStack {
                    ImageUIView(image: currentImage)
                        .frame(height: 176)
                        .overlay(
                            Button(action: {
                                // Action pour changer l'image, par exemple ouvrir une galerie de photos
                            }) {
                                Text("Changer Image")
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(Color.black.opacity(0.7))
                                    .foregroundColor(.white)
                                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 5, bottomLeadingRadius: 5,
                                               bottomTrailingRadius: 20                      ))
                            },
                            alignment: .bottomTrailing
                        )
                }
            } else {
                ImageUIView(image: image)
                    .frame(height: 176)
            }

            if isEditable {
                JustifiedTextUIView(text: text, isEditable: true)
                    .fixedSize(horizontal: false, vertical: true)
            } else {
                JustifiedTextUIView(text: text)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

#Preview {
    VStack {
        // Exemple de vue non éditable
        ImageDescriptionExView(
            image: UIImage(named: "MVBathroom01") ?? UIImage(),
            text: "Transformer la salle de bain en un véritable havre de paix. L'ajout de végétation autour de la baignoire crée une ambiance apaisante et naturelle. Les plantes suspendues et les pots disposés de manière stratégique non seulement purifient l'air mais ajoutent également une touche d'esthétique organique."
        )
        .padding()

        // Exemple de vue éditable
        ImageDescriptionExView(
            image: UIImage(named: "MVBathroom01") ?? UIImage(),
            text: "Transformer la salle de bain en un véritable havre de paix. L'ajout de végétation autour de la baignoire crée une ambiance apaisante et naturelle. Les plantes suspendues et les pots disposés de manière stratégique non seulement purifient l'air mais ajoutent également une touche d'esthétique organique.",
            isEditable: true
        )
        .padding()
    }
}
