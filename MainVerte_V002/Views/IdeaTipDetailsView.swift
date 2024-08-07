//
//  IdeaTipDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaTipDetailsView: View {
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
            ZStack {
                TitleExView(title: "Insecte nuisible")
                HStack {
                    Spacer()
                    FavoriteButtonExView()
                        .offset(y: 5)
                }
            }
            .padding(.horizontal, 5)
            ScrollView {
            ImageDescriptionExView(
                image: UIImage(named: "MVTipMaintenancePestControl") ?? UIImage(),
                text: "Les insectes, peuvent coloniser les plantes d’intérieur. Le savon insecticide, un produit naturel, est un traitement efficace et facile à utiliser. Pour débarrasser vos végétaux des cochenilles, tamponnez les tiges et les feuilles avec une boule de coton imbibée d’alcool, une fois par semaine jusqu’à disparition complète. D’autre part, lorsque des moucherons fongiques tournent autour de vos plantes, c’est le signe manifeste que celles-ci sont trop arrosées."
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
          
                    MessageBubbleExView(text: "Très bon conseil!", photo: "MVProfil02", isCurrentUser: false)
                    MessageBubbleExView(text: "Top!", photo: "MVProfil03", isCurrentUser: false)
                
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaTipDetailsView()
}
