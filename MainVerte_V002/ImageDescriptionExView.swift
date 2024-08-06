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
    
    var body: some View {
        VStack {
            ImageUIView(image: image)
                .frame(height: 176)
            JustifiedTextUIView(text: text)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    ImageDescriptionExView(
        image: UIImage(named: "MVBathroom01") ?? UIImage(),
        text: "Transformer la salle de bain en un véritable havre de paix. L'ajout de végétation autour de la baignoire crée une ambiance apaisante et naturelle. Les plantes suspendues et les pots disposés de manière stratégique non seulement purifient l'air mais ajoutent également une touche d'esthétique organique."
    )
    .padding()
}
