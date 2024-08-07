//
//  IdeaListQuestionsView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

//import SwiftUI
//
//struct IdeaListQuestionsView: View {
//    @Environment(\.dismiss) private var dismiss
//    
//    var body: some View {
//        VStack {
//            HStack {
//                Button(action: {
//                    dismiss()
//                }) {
//                    HStack {
//                        Image(systemName: "chevron.left")
//                        Text("Idées")
//                    }
//                    .foregroundColor(Color.mvMediumGray)
//                }
//                .navigationBarBackButtonHidden(true)
//                Spacer()
//           }
//            ScrollView {
//                VStack {
//                    ImageTextExView(
//                    image: "MVTipQuestionRomarin",
//                    title: "Romarin envahi par doryphores",
//                    subtitle: "Patrice",
//                    isFavoriteView: false
//                    )
//                    ImageTextExView(
//                    image: "MVTipQuestionLaurier",
//                    title: "Comment protéger laurier du gel ?",
//                    subtitle: "Ambre",
//                    isFavoriteView: false
//                    )
//                    ImageTextExView(
//                    image: "MVTipQuestionZucchini",
//                    title: "Courgette: que des fleurs mâles ?",
//                    subtitle: "Zoha",
//                    isFavoriteView: false
//                    )
//                    NavigationLink(destination: IdeaQuestionDetailsView()) {
//                        ImageTextExView(
//                            image: "MVTipQuestionPest",
//                            title: "Comment protéger potager?",
//                            subtitle: "Zak",
//                            isFavoriteView: true
//                        )
//                    }
//                }
//            }
//        }
//        .padding(.horizontal)
//        .background(BackgroundExView(opacity: 0.9))
//    }
//}
//
//#Preview {
//    IdeaListQuestionsView()
//}

import SwiftUI

struct IdeaListQuestionsView: View {
    @Environment(\.dismiss) private var dismiss
    var selectedVersion: String
    
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
                    if selectedVersion == "Version 1" {
                        // Contenu de la version 1
                        ImageTextExView(
                            image: "MVTipQuestionRecycleWater",
                            title: "Romarin envahi par doryphores",
                            subtitle: "Amandine",
                            isFavoriteView: false
                        )
                        ImageTextExView(
                            image: "MVTipQuestionDeadPlant",
                            title: "Si une plante est morte ?",
                            subtitle: "Elie",
                            isFavoriteView: true
                        )
                        ImageTextExView(
                            image: "MVTipQuestionMidge",
                            title: "Courgette: que des fleurs mâles ?",
                            subtitle: "Zoha",
                            isFavoriteView: false
                        )
                        NavigationLink(destination: IdeaQuestionDetailsView()) {
                            ImageTextExView(
                                image: "MVTipQuestionPlantThirsty",
                                title: "Comment protéger potager?",
                                subtitle: "Zak",
                                isFavoriteView: false
                            )
                        }
                    } else if selectedVersion == "Version 2" {
                        // Contenu de la version 2
                        ImageTextExView(
                            image: "MVTipQuestionRomarin",
                            title: "Problèmes avec Romarin",
                            subtitle: "Patrice",
                            isFavoriteView: false
                        )
                        ImageTextExView(
                            image: "MVTipQuestionLaurier",
                            title: "Protéger le Laurier du gel",
                            subtitle: "Ambre",
                            isFavoriteView: false
                        )
                        ImageTextExView(
                            image: "MVTipQuestionZucchini",
                            title: "Problème de fleurs sur Courgette",
                            subtitle: "Zoha",
                            isFavoriteView: false
                        )
                        NavigationLink(destination: IdeaQuestionDetailsView()) {
                            ImageTextExView(
                                image: "MVTipQuestionPest",
                                title: "Protéger le potager contre les nuisibles",
                                subtitle: "Zak",
                                isFavoriteView: true
                            )
                        }
                    }
                    // Ajoutez d'autres versions ici si nécessaire
                }
            }
            .padding(.horizontal)
        }
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    IdeaListQuestionsView(selectedVersion: "Version 1")
}
