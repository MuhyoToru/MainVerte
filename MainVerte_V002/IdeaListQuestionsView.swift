//
//  IdeaListQuestionsView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

import SwiftUI

struct IdeaListQuestionsView: View {
    @EnvironmentObject var viewModel: IdeaQuestionViewModel
    var category: String
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
            ScrollView {
                VStack {
                    ForEach(viewModel.ideaQuestions.filter { $0.subCategory == category }) { ideaQuestion in
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
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaListQuestionsView(category: "Plantes Intérieurs")
        .environmentObject(IdeaQuestionViewModel())
}
