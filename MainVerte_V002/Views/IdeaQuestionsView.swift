//
//  IdeaQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

//struct IdeaQuestionsView: View {
//    @State private var navigateToCreateIdeaQuestionView = false
//
//    var body: some View {
//        VStack {
//            ScrollView {
//                VStack(alignment: .leading){
//                    ComposedImagesExView(
//                        leftImage: "MVTipQuestionRecycleWater",
//                        topImage: "MVTipQuestionDeadPlant",
//                        bottomImage: "MVTipQuestionMidge",
//                        rightImage: "MVTipQuestionPlantThirsty",
//                        title: "Plantes Intérieurs",
//                        subtitle: "4 Questions"
//                    )
//                    ComposedImagesExView(
//                        leftImage: "MVTipQuestionRomarin",
//                        topImage: "MVTipQuestionLaurier",
//                        bottomImage: "MVTipQuestionZucchini",
//                        rightImage: "MVTipQuestionPest",
//                        title: "Plantes Extérieurs",
//                        subtitle: "6 Questions"
//                    )
//                }
//            }
//            HStack {
//                Spacer()
//                Button {
//                    navigateToCreateIdeaQuestionView = true
//                } label: {
//                    ActionButtonExView(action: "plus")
//                }
//            }
//        }
//        .padding(.horizontal)
//        .padding(.bottom, 12)
//        .navigationDestination(isPresented: $navigateToCreateIdeaQuestionView) {
//            CreateIdeaQuestionView()
//            .navigationBarBackButtonHidden(true)
//        }
//    }
//}


//struct IdeaQuestionsView: View {
//    @Binding var isPresentingModal: Bool
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
//                    ComposedImagesExView(
//                        leftImage: "MVTipQuestionRomarin",
//                        topImage: "MVTipQuestionLaurier",
//                        bottomImage: "MVTipQuestionZucchini",
//                        rightImage: "MVTipQuestionPest",
//                        title: "Plantes Extérieurs",
//                        subtitle: "6 Questions"
//                    )
//                }
//            }
//            HStack {
//                Spacer()
//                Button(action: {
//                    isPresentingModal = true
//                }) {
//                    ActionButtonExView(action: "plus")
//                }
//                .padding()
//            }
//        }
//        .padding(.horizontal)
//        .padding(.bottom, 12)
//    }
//}


struct IdeaQuestionsView: View {
    @Binding var showModal: Bool

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ComposedImagesExView(
                        leftImage: "MVTipQuestionRecycleWater",
                        topImage: "MVTipQuestionDeadPlant",
                        bottomImage: "MVTipQuestionMidge",
                        rightImage: "MVTipQuestionPlantThirsty",
                        title: "Plantes Intérieurs",
                        subtitle: "4 Questions"
                    )
                    NavigationLink(destination: IdeaListQuestionsView()) {
                        ComposedImagesExView(
                            leftImage: "MVTipQuestionRomarin",
                            topImage: "MVTipQuestionLaurier",
                            bottomImage: "MVTipQuestionZucchini",
                            rightImage: "MVTipQuestionPest",
                            title: "Plantes Extérieurs",
                            subtitle: "6 Questions"
                        )
                    }
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        showModal = true
                    }
                }) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 12)
    }
}

//#Preview {
//    IdeaQuestionsView()
//}
