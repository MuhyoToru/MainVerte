//
//  ButtonAddExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 26/07/2024.
//

import SwiftUI

struct ButtonAddExView: View {
//    var action: () -> Void
    var text: String
    var iconName: String
    var fontSize: CGFloat = 16
    var cornerRadius: CGFloat = 15
    var textWeight: Font.Weight = .medium
    var width: CGFloat = 210
    var height: CGFloat = 60
    
    var body: some View {
//        Button(action: {
//            action()
//        }) {
            HStack {
                Text(text)
                    .font(.system(size: fontSize, weight: textWeight))
                    .foregroundColor(.mvDarkGreen)
                Image(systemName: iconName)
                    .foregroundColor(.mvDarkGreen)
                    .font(.system(size: 14, weight: .bold))
            }
            .frame(width: width, height: height)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.mvDarkGreen, lineWidth: 1.5)
            )
//        }
    }
}

#Preview {
    VStack(spacing: 20) {
        ButtonAddExView(
//            action: {
//                // Action pour ajouter une plante
//            },
            text: "Ajouter une Plante",
            iconName: "plus",
            fontSize: 12,
            cornerRadius: 5,
            textWeight: .bold,
            width: 160,
            height: 30
        )
        ButtonAddExView(
//            action: {
//                // Action pour ajouter une photo
//            },
            text: "Ajouter une Photo",
            iconName: "camera",
            fontSize: 12,
            cornerRadius: 5,
            textWeight: .bold,
            width: 160,
            height: 30
        )
        ButtonAddExView(
//            action: {
//                // Action pour ajouter une photo
//            },
            text: "Ajouter une Photo",
            iconName: "camera"
            
        )
        ButtonAddExView(
//            action: {
//                // Action pour ajouter une description
//            },
            text: "Ajouter Description",
            iconName: "pencil"
            
        )
    }
    .padding()

}
