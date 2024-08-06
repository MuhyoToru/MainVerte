//
//  JustifiedTextUIView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

//import SwiftUI
//
//struct JustifiedTextUIView: UIViewRepresentable {
//    var text: String
//    var minHeight: CGFloat = 40
//    var maxHeight: CGFloat = 200
//    var fontSize: CGFloat = 18
//    var fontWeight: UIFont.Weight = .regular
//    var textColor: UIColor = .mvBlack
//    var backgroundColor: UIColor = .clear
//
//    func makeUIView(context: Context) -> JustifiedTextViewContainer {
//        let textUIView = JustifiedTextViewContainer(frame: .zero, minHeight: minHeight, maxHeight: maxHeight, fontSize: fontSize, fontWeight: fontWeight, textColor: textColor, backgroundColor: backgroundColor)
//        textUIView.setText(text)
//        return textUIView
//    }
//
//    func updateUIView(_ uiView: JustifiedTextViewContainer, context: Context) {
//        uiView.setText(text)
//    }
//}
//
//#Preview {
//    VStack {
//        JustifiedTextUIView(text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser", fontSize: 20, fontWeight: .medium, textColor: .white, backgroundColor: .black)
//            .fixedSize(horizontal: false, vertical: true)
//        
//        JustifiedTextUIView(text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pestiQuels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesti")
//            .fixedSize(horizontal: false, vertical: true)
//    }
//    .padding()
//}

import SwiftUI

struct JustifiedTextUIView: UIViewRepresentable {
    var text: String
    var minHeight: CGFloat = 40
    var maxHeight: CGFloat = 200
    var fontSize: CGFloat = 18
    var fontWeight: UIFont.Weight = .regular
    var textColor: UIColor = .mvBlack
    var backgroundColor: UIColor = .clear
    var topLeftRadius: CGFloat = 0
    var topRightRadius: CGFloat = 0
    var bottomLeftRadius: CGFloat = 0
    var bottomRightRadius: CGFloat = 0

    func makeUIView(context: Context) -> JustifiedTextViewContainer {
        let textUIView = JustifiedTextViewContainer(
            frame: .zero,
            minHeight: minHeight,
            maxHeight: maxHeight,
            fontSize: fontSize,
            fontWeight: fontWeight,
            textColor: textColor,
            backgroundColor: .clear // Important
        )
        textUIView.setText(text)
        return textUIView
    }

    func updateUIView(_ uiView: JustifiedTextViewContainer, context: Context) {
        uiView.setText(text)
    }
}

struct JustifiedTextUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            JustifiedTextUIView(
                text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser",
                fontSize: 20,
                fontWeight: .black,
                textColor: .white,
                backgroundColor: .black
            )
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .fixedSize(horizontal: false, vertical: true)
            
            JustifiedTextUIView(
                text: "Merci",
                fontSize: 17,
                textColor: .mvDarkGray,
                backgroundColor: .black
            )
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color.white)
            .clipShape(UnevenRoundedRectangle(
                bottomLeadingRadius: 10,
                bottomTrailingRadius: 10,
                topTrailingRadius: 10
            ))
            .fixedSize(horizontal: false, vertical: true)
            
            JustifiedTextUIView(
                text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides.Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides.Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides.Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides."
            )
            .fixedSize(horizontal: false, vertical: true)
        }
        .padding()
        .background(Color.red)
    }
    
}
