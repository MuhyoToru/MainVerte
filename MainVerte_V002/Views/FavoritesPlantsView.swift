//
//  FavoritesPlantsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FavoritesPlantsView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ImageTextExView(
                    image: "MVTomato",
                    title: "Tomate",
                    subtitle: "Solannm Lycopersicum",
                    isFavoriteView: true
                    )
                    ImageTextExView(
                    image: "MVLavender",
                    title: "Lavande",
                    subtitle: "Lavandula",
                    isFavoriteView: true
                    )
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    FavoritesPlantsView()
}
