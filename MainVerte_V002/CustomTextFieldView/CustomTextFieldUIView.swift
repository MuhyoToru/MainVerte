//
//  CustomTextFieldUIView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 06/08/2024.
//

import SwiftUI

struct CustomTextFieldUIView: UIViewRepresentable {
    @Binding var text: String
    var font: UIFont
    var textColor: UIColor

    func makeUIView(context: Context) -> CustomCursorTextField {
        let textField = CustomCursorTextField()
        textField.delegate = context.coordinator
        textField.placeholder = "Enter text"
        textField.borderStyle = .none
        textField.textAlignment = .center
        textField.font = font
        textField.textColor = textColor
        textField.tintColor = .mvDarkGreen
        textField.customCursorHeight = 36
        textField.cursorYOffset = 36
        return textField
    }

    func updateUIView(_ uiView: CustomCursorTextField, context: Context) {
        uiView.text = text
        uiView.font = font
        uiView.textColor = textColor
    }

    func makeCoordinator() -> CustomTextFieldCoordinator {
        CustomTextFieldCoordinator(parent: self)
    }
}

struct CustomTextFieldUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldUIView(
            text: .constant("Example Text à Modifier"),
            font: UIFont(name: "Sumana-Regular", size: 32) ?? UIFont.systemFont(ofSize: 32),
            textColor: .mvVeryDarkGreen
        )
    }
}
