//
//  IdeaQuestionDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaQuestionDetailsView: View {
    let isHorizontal: Bool = true
    
    var body: some View {
        VStack {
            ZStack {
                Text("Potager")
                    .font(.system(size: 30))
                HStack {
                    Spacer()
                    FavoriteButtonExView()
                }
            }
            .padding(.horizontal, 5)
            Image("MVTipQuestionPest")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 176)
                .cornerRadius(20)
                .clipped()
            JustifiedTextExView(text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?")
                .frame(height: 100)
            HStack {
                Text("Commentaires")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
            }
            ScrollView {
                    MessageBubbleExView(text: "Planter des herbes aromatiques comme la menthe, le basilic et la ciboulette autour de votre potager. Ces plantes dégagent des odeurs que beaucoup de nuisibles n'aiment pas. De plus, elles sont utiles en cuisine !", photo: "MVProfil01", isCurrentUser: false)
                    MessageBubbleExView(text: "Merci!", photo: "MVProfil04", isCurrentUser: true)
                
            }
        }
        .padding()
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaQuestionDetailsView()
}
