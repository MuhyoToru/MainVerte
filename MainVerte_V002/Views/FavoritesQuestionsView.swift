//
//  FavoritesQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesQuestionsView: View {
    
    @EnvironmentObject var ideaQuestionViewModel : IdeaQuestionViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(ideaQuestionViewModel.ideaQuestions) { ideaQuestion in
                        if ideaQuestion.isFavorite {
                            NavigationLink(destination: IdeaQuestionDetailsView(ideaQuestion: ideaQuestion)) {
                                ImageTextExView(
                                    image: ideaQuestion.images,
                                    title: ideaQuestion.title,
                                    subtitle: ideaQuestion.subtitle,
                                    isFavorite: ideaQuestion.isFavorite
                                )
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesQuestionsView()
        .environmentObject(IdeaQuestionViewModel())
}
