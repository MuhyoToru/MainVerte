//
//  FavoritesTipsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesTipsView: View {
    
    @EnvironmentObject var ideaTipViewModel : IdeaTipViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(ideaTipViewModel.ideaTips) { ideaTip in
                    if ideaTip.isFavorite {
                        NavigationLink(destination: IdeaTipDetailsView(ideaTip: ideaTip)) {
                            ImageTextExView(
                                image: ideaTip.images,
                                title: ideaTip.title,
                                subtitle: ideaTip.subtitle,
                                isFavorite: ideaTip.isFavorite
                            )
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesTipsView()
        .environmentObject(IdeaTipViewModel())
}
