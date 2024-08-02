//
//  JustifiedTextExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 01/08/2024.
//

import SwiftUI

struct JustifiedTextExView: UIViewRepresentable {
    var text: String

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
        textView.textAlignment = .justified
        textView.backgroundColor = .clear
        return textView
    }
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

#Preview {
    JustifiedTextExView(text: "Quels sont les meilleurs moyens naturels pour protéger un potager extérieur contre les nuisibles sans utiliser de pesticides chimiques ?")
}
