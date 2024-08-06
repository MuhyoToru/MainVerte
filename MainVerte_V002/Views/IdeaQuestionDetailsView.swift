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
            HStack {
                NavigationLink(destination: IdeaListTipsView()) {
                    Image(systemName: "chevron.left")
                    Text("Idées")
                }
                .foregroundColor(Color.mvMediumGray)
                .navigationBarBackButtonHidden(true)
               Spacer()
           }
            ZStack {
                TitleExView(title: "Oasis de Sérénité")
                HStack {
                    Spacer()
                    FavoriteButtonExView()
                        .offset(y: 5)
                }
            }
            .padding(.horizontal, 5)
//            ImageTextViewRepresentable(
//                image: UIImage(named: "MVTipQuestionPest") ?? UIImage(),
//                text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?"
//            )
//                .frame(height: 284)
            ImageDescriptionExView(
                image: UIImage(named: "MVTipQuestionPest") ?? UIImage(),
                text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?"
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
            ScrollView {
                    MessageBubbleExView(text: "Planter des herbes aromatiques comme la menthe, le basilic et la ciboulette autour de votre potager. Ces plantes dégagent des odeurs que beaucoup de nuisibles n'aiment pas. De plus, elles sont utiles en cuisine !", photo: "MVProfil01", isCurrentUser: false)
                    MessageBubbleExView(text: "Merci!", photo: "MVProfil04", isCurrentUser: true)
                
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaQuestionDetailsView()
}
