//
//  IdeaTipDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaTipDetailsView: View {
    let isHorizontal: Bool = true
    
    var body: some View {
        VStack {
            ZStack {
                Text("Insectes nuisibles")
                    .font(.system(size: 30))
                HStack {
                    Spacer()
                    FavoriteButtonExView()
                }
            }
            .padding(.horizontal, 5)
            Image("MVTipMaintenancePestControl")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 176)
                .cornerRadius(20)
                .clipped()
            JustifiedTextExView(text: "Plusieurs insectes, tels que les pucerons et les tétranyques, peuvent coloniser les plantes d’intérieur. Le savon insecticide, un produit naturel, est un traitement efficace et facile à utiliser. Pour débarrasser vos végétaux des cochenilles, tamponnez les tiges et les feuilles avec une boule de coton imbibée d’alcool, une fois par semaine jusqu’à disparition complète. D’autre part, lorsque des moucherons fongiques tournent autour de vos plantes, c’est le signe manifeste que celles-ci sont trop arrosées.")
                .frame(height: 275)
            HStack {
                Text("Commentaires")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
            }
            ScrollView {
                    MessageBubbleExView(text: "Très bon conseil!", photo: "MVProfil02", isCurrentUser: false)
                    MessageBubbleExView(text: "Top!", photo: "MVProfil03", isCurrentUser: false)
                
            }
        }
        .padding()
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaTipDetailsView()
}
