//
//  IdeaListSpacesView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 03/08/2024.
//

import SwiftUI

struct IdeaListSpacesView: View {
    @State private var showModal = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: IdeasView(segmentedSelection: 0)) {
                    Image(systemName: "chevron.left")
                    Text("Idées")
                }
                .foregroundColor(Color.mvMediumGray)
                .navigationBarBackButtonHidden(true)
               Spacer()
           }
            ScrollView {
                VStack {
                    NavigationLink(destination: IdeaSpaceDetailsView()) {
                        ImageTextExView(
                            image: "MVBathroom01",
                            title: "Oasis de Sérénité",
                            subtitle: "Haiying",
                            isFavoriteView: true
                        )
                    }
                    ImageTextExView(
                    image: "MVBathroom02",
                    title: "Douche Jardinée",
                    subtitle: "Estelle",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                    image: "MVBathroom03",
                    title: "Douche Botanique",
                    subtitle: "Aurélien",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                    image: "MVBathroom04",
                    title: "Douche Élégance Monochrome",
                    subtitle: "Audrey",
                    isFavoriteView: false
                    )
                    ImageTextExView(
                        image: "MVBathroom05",
                        title: "Évasion au Spa",
                        subtitle: "Pierre",
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
    IdeaListSpacesView()
}
