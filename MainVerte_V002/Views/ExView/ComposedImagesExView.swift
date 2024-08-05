//
//  ComposedImagesExView.swift
//  MainVerte
//
//  Created by Apprenant 166 on 31/07/2024.
//

import SwiftUI

struct ComposedImagesExView: View {
    var leftImage: String = "MVBathroom01"
    var topImage: String = "MVBathroom02"
    var bottomImage: String = "MVBathroom03"
    var rightImage: String = "MVBathroom04"
    var title: String = "Salle de bain"
    var subtitle: String = "15 Idées"
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 5) {
                Image(leftImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 176)
                    .clipped()
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, bottomLeadingRadius: 20))
                VStack (spacing: 5){
                    Image(topImage)
                        .resizable()
                        .clipped()
                    Image(bottomImage)
                        .resizable()
                        .clipped()
                }
                Image(rightImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 88)
                    .clipped()
                    .clipShape(UnevenRoundedRectangle( bottomTrailingRadius: 20, topTrailingRadius: 20))
            }
            .frame(height: 176)
            TitleExView(title: title, textSize: 20, textColor: .mvDarkGreen, textWeight: .bold)
            Text(subtitle)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.mvDarkGreen)
                .offset(y: -5)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ComposedImagesExView()
}
