//
//  IdeaListSpacesView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

import SwiftUI

struct IdeaListSpacesView: View {
    @EnvironmentObject var viewModel: IdeaSpaceViewModel
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
                    ForEach(viewModel.ideaSpaces.filter { $0.subCategory == category }) { ideaSpace in
                        NavigationLink(destination: IdeaSpaceDetailsView(ideaSpace: ideaSpace)) {
                            ImageTextExView(
                                image: ideaSpace.images,
                                title: ideaSpace.title,
                                subtitle: ideaSpace.subtitle,
                                isFavorite: ideaSpace.isFavorite
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
    IdeaListSpacesView(category: "Salle de bain")
        .environmentObject(IdeaSpaceViewModel())
}


