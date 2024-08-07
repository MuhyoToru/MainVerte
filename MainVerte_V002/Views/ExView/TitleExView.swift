//
//  TitleExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

//struct TitleExView: View {
//    
//    var title : String
//    var textSize : CGFloat = 32
//    var textColor: Color = .mvVeryDarkGreen
//    var textWeight: Font.Weight = .regular
//
//    
//    var body: some View {
//        Text(title)
//            .font(.custom("Sumana-Regular", size: textSize).weight(textWeight)) //
//            .foregroundStyle(textColor) //
//            .frame(height: textSize * 1.8)
//    }
//}
//
//#Preview {
//    VStack {
//        TitleExView(title: "Le projet Titre")
//        TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
//        TitleExView(title: "Texte Gras", textSize: 20, textColor: .mvDarkGreen, textWeight: .bold)
//    }
//}

struct TitleExView: View {
    var title: String
    var textSize: CGFloat = 32
    var textColor: Color = .mvVeryDarkGreen
    var textWeight: Font.Weight = .regular
    var isEditable: Bool = false
    
    @State private var editableTitle: String

    init(title: String, textSize: CGFloat = 32, textColor: Color = .mvVeryDarkGreen, textWeight: Font.Weight = .regular, isEditable: Bool = false) {
        self.title = title
        self.textSize = textSize
        self.textColor = textColor
        self.textWeight = textWeight
        self.isEditable = isEditable
        _editableTitle = State(initialValue: title)
    }

    var body: some View {
        if isEditable {
            CustomTextFieldUIView(
                text: $editableTitle,
                font: UIFont(name: "Sumana-Regular", size: textSize) ?? UIFont.systemFont(ofSize: textSize),
                textColor: UIColor(textColor)
            )
            .frame(height: textSize * 1.8)
            .multilineTextAlignment(.center)
        } else {
            Text(title)
                .font(.custom("Sumana-Regular", size: textSize).weight(textWeight))
                .foregroundStyle(textColor)
                .frame(height: textSize * 1.8)
        }
    }
}

#Preview {
    VStack {
        TitleExView(title: "Le projet Titre")
        TitleExView(title: "Commentaires", textSize: 30, textColor: .mvDarkGreen)
        TitleExView(title: "Texte Gras", textSize: 20, textColor: .mvDarkGreen, textWeight: .bold)
        TitleExView(title: "Éditable Exemple", isEditable: true)
    }
}

