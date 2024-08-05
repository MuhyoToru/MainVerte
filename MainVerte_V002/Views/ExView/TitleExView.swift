//
//  TitleExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct TitleExView: View {
    
    var title : String
    var textSize : CGFloat = 32
    var textColor: Color = .mvVeryDarkGreen
    var textWeight: Font.Weight = .regular

    
    var body: some View {
        Text(title)
            .font(.custom("Sumana-Regular", size: textSize).weight(textWeight)) //
            .foregroundStyle(textColor) //
            .frame(height: textSize * 1.8)
    }
}

#Preview {
    VStack {
        TitleExView(title: "Le projet Titre")
        TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
        TitleExView(title: "Texte Gras", textSize: 20, textColor: .mvDarkGreen, textWeight: .bold)
    }
}
