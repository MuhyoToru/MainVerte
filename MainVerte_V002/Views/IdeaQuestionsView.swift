//
//  IdeaQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

//struct IdeaQuestionsView: View {
//
//    var body: some View {
//        VStack {
//            ScrollView {
//                VStack(alignment: .leading) {
//                    ComposedImagesExView(
//                        leftImage: "MVTipQuestionRecycleWater",
//                        topImage: "MVTipQuestionDeadPlant",
//                        bottomImage: "MVTipQuestionMidge",
//                        rightImage: "MVTipQuestionPlantThirsty",
//                        title: "Plantes Intérieurs",
//                        subtitle: "4 Questions"
//                    )
//                    NavigationLink(destination: IdeaListQuestionsView()) {
//                        ComposedImagesExView(
//                            leftImage: "MVTipQuestionRomarin",
//                            topImage: "MVTipQuestionLaurier",
//                            bottomImage: "MVTipQuestionZucchini",
//                            rightImage: "MVTipQuestionPest",
//                            title: "Plantes Extérieurs",
//                            subtitle: "6 Questions"
//                        )
//                    }
//                }
//            }
//            HStack {
//                Spacer()
//                NavigationLink(destination: CreateIdeaView()) {
//                    ActionButtonExView(action: "plus")
//                }
//            }
//        }
//        .padding(.horizontal)
//        .padding(.bottom)
//    }
//}
//
//#Preview {
//    IdeaQuestionsView()
//}

import SwiftUI

//struct IdeaQuestionsView: View {
//    var body: some View {
//        VStack {
//            ScrollView {
//                VStack(alignment: .leading) {
//                    // Naviguer vers la Version 1
//                    NavigationLink(destination: IdeaListQuestionsView(selectedVersion: "Version 1")) {
//                        ComposedImagesExView(
//                            leftImage: "MVTipQuestionRecycleWater",
//                            topImage: "MVTipQuestionDeadPlant",
//                            bottomImage: "MVTipQuestionMidge",
//                            rightImage: "MVTipQuestionPlantThirsty",
//                            title: "Plantes Intérieurs",
//                            subtitle: "4 Questions"
//                        )
//                    }
//
//                    // Naviguer vers la Version 2
//                    NavigationLink(destination: IdeaListQuestionsView(selectedVersion: "Version 2")) {
//                        ComposedImagesExView(
//                            leftImage: "MVTipQuestionRomarin",
//                            topImage: "MVTipQuestionLaurier",
//                            bottomImage: "MVTipQuestionZucchini",
//                            rightImage: "MVTipQuestionPest",
//                            title: "Plantes Extérieurs",
//                            subtitle: "6 Questions"
//                        )
//                    }
//                }
//            }
//            HStack {
//                Spacer()
//                NavigationLink(destination: CreateIdeaView()) {
//                    ActionButtonExView(action: "plus")
//                }
//            }
//        }
//        .padding(.horizontal)
//        .padding(.bottom)
//    }
//}
//
//#Preview {
//    IdeaQuestionsView()
//}


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
