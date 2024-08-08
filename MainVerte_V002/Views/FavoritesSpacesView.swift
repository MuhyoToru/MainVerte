//
//  FavoritesSpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesSpacesView: View {
    
    @EnvironmentObject var ideaSpaceViewModel : IdeaSpaceViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(ideaSpaceViewModel.ideaSpaces) { ideaSpace in
                        if ideaSpace.isFavorite {
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
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesSpacesView()
        .environmentObject(IdeaSpaceViewModel())
}
