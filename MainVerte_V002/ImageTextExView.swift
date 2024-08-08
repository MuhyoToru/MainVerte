//
//  ImageTextExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 02/08/2024.
//

import SwiftUI

struct ImageTextExView: View {
    var image: String = "MVBathroom05"
    var title: String = "Salle de bain"
    var subtitle: String = "Pierre"
    var isFavorite: Bool = false

    var body: some View {
        VStack (alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 176)
                .cornerRadius(20)
                .clipped()
            HStack {
                TitleExView(title: title, textSize: 20, textColor: .mvDarkGreen, textWeight: .bold)
                Spacer()
                if isFavorite {
                    FavoriteButtonExView(isFavorite: true)
                        .offset(y: 5)
                }
                else {
                    FavoriteButtonExView()
                        .offset(y: 5)
                }
            }
            Text(subtitle)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.mvDarkGreen)
                .offset(y: -5)
        }
        .padding(.vertical, 12)
    }
}

#Preview {
    VStack {
        ImageTextExView()
        ImageTextExView(isFavorite: true)
    }
}



