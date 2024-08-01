//
//  IdeaQuestionViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation

class IdeaQuestionViewModel: ObservableObject {
    @Published var ideaQuestions : [IdeaQuestion] = []
    
    init() {
        ideaQuestions = [
            IdeaQuestion(title: "", subtitle: "", images: [], description: "")
        ]
    }
}
