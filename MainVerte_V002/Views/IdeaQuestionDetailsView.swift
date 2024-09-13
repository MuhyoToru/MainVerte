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
                ImageDescriptionExView(
                    image: UIImage(named: ideaQuestion.images) ?? UIImage(), text: ideaQuestion.description
            )
            HStack {
                TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
                Spacer()
                ActionButtonExView(isHorizontal: isHorizontal)
                    .offset(y: 5)
            }
                ForEach(ideaQuestion.comments) { comment in
                    MessageBubbleExView(text: comment.text, photo: comment.image, isCurrentUser: comment.isCurrentUser)
                }
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaQuestionDetailsView(ideaQuestion: IdeaQuestion(title: "Test", subtitle: "Test", images: "MVTomato", description: "Test", subCategory: "Test"))
}


