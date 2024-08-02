//
//  IdeaQuestionsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaQuestionsView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    ComposedImagesExView(
                        leftImage: "MVTipQuestionRecycleWater",
                        topImage: "MVTipQuestionDeadPlant",
                        bottomImage: "MVTipQuestionMidge",
                        rightImage: "MVTipQuestionPlantThirsty",
                        title: "Plantes Intérieurs",
                        subtitle: "4 Questions"
                    )
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
            HStack {
                Spacer()
                ActionButtonExView(action: "plus")
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 12)
    }
}

#Preview {
    IdeaQuestionsView()
}
