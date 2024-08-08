//
//  IdeaListTipsView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

import SwiftUI

struct IdeaListTipsView: View {
    @EnvironmentObject var ideaTipViewModel: IdeaTipViewModel
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
                    ForEach(ideaTipViewModel.ideaTips.filter { $0.subCategory == category }) { ideaTip in
                        NavigationLink(destination: IdeaTipDetailsView()) {
                            ImageTextExView(
                                image: ideaTip.images,
                                title: ideaTip.title,
                                subtitle: ideaTip.subtitle
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
    IdeaListTipsView(category: "Entretien")
        .environmentObject(IdeaTipViewModel())
}
