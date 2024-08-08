//
//  IdeaQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaQuestionsView: View {
    @EnvironmentObject var ideaQuestionViewModel: IdeaQuestionViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(groupedIdeaQuestions.keys.sorted(), id: \.self) { category in
                        if let ideas = groupedIdeaQuestions[category] {
                            NavigationLink(destination: IdeaListQuestionsView(category: category).environmentObject(ideaQuestionViewModel)) {
                                ComposedImagesExView(
                                    leftImage: ideas[safe: 0]?.images ?? "",
                                    topImage: ideas[safe: 1]?.images ?? "",
                                    bottomImage: ideas[safe: 2]?.images ?? "",
                                    rightImage: ideas[safe: 3]?.images ?? "",
                                    title: category,
                                    subtitle: "\(ideas.count) Idées"
                                )
                            }
                        }
                    }
                }
            }
            HStack {
                Spacer()
                NavigationLink(destination: CreateIdeaView()) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
    
    // Group ideas by subCategory
    private var groupedIdeaQuestions: [String: [IdeaQuestion]] {
        Dictionary(grouping: ideaQuestionViewModel.ideaQuestions, by: { $0.subCategory })
    }
}

#Preview {
    IdeaQuestionsView()
        .environmentObject(IdeaQuestionViewModel())
}
