//
//  IdeaListQuestionsView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

import SwiftUI

struct IdeaListQuestionsView: View {
    @State private var showModal = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: IdeasView(segmentedSelection: 2)) {
                    Image(systemName: "chevron.left")
                    Text("Idées")
                }
                .foregroundColor(Color.mvMediumGray)
                .navigationBarBackButtonHidden(true)
               Spacer()
           }
            ScrollView {
                VStack {
                    ImageTextExView(
                    image: "MVTipQuestionRomarin",
                    title: "Romarin envahi par doryphores",
                    subtitle: "Patrice",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                    image: "MVTipQuestionLaurier",
                    title: "Comment protéger laurier du gel ?",
                    subtitle: "Ambre",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                    image: "MVTipQuestionZucchini",
                    title: "Courgette: que des fleurs mâles ?",
                    subtitle: "Zoha",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                    image: "MVTipQuestionPest",
                    title: "Comment protéger potager?",
                    subtitle: "Zak",
                    isFavoriteView: true
                    )
                }
            }
        }
        .padding(.horizontal)
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaListQuestionsView()
}
