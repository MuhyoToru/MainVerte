//
//  IdeaQuestionDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaQuestionDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    let isHorizontal: Bool = true
    var ideaQuestion: IdeaQuestion
    
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
                TitleExView(title: ideaQuestion.title)
                HStack {
                    Spacer()
                    FavoriteButtonExView(isFavorite: ideaQuestion.isFavorite)
                        .offset(y: 5)
                }
            }
            .padding(.horizontal, 5)
            ScrollView {
//            ImageTextViewRepresentable(
//                image: UIImage(named: "MVTipQuestionPest") ?? UIImage(),
//                text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?"
//            )
//                .frame(height: 284)
                ImageDescriptionExView(
                    image: UIImage(named: ideaQuestion.images) ?? UIImage(), text: ideaQuestion.description
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
            
//                    MessageBubbleExView(text: "Planter des herbes aromatiques comme la menthe, le basilic et la ciboulette autour de votre potager. Ces plantes dégagent des odeurs que beaucoup de nuisibles n'aiment pas. De plus, elles sont utiles en cuisine !", photo: "MVProfil01", isCurrentUser: false)
//                    MessageBubbleExView(text: "Merci!", photo: "MVProfil04", isCurrentUser: true)ForEach(ideaQuestion.comments) { comment in
                ForEach(ideaQuestion.comments) { comment in
                    MessageBubbleExView(text: comment.text, photo: comment.image, isCurrentUser: comment.isCurrentUser)
                }
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

//#Preview {
//    IdeaQuestionDetailsView()
//}
//

