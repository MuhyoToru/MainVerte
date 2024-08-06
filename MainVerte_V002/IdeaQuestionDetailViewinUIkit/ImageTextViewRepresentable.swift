//
//  ImageTextViewRepresentable.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 04/08/2024.
//

import SwiftUI

struct ImageTextViewRepresentable: UIViewRepresentable {
    let image: UIImage
    let text: String
    
    func makeUIView(context: Context) -> some UIView {
        return ImageTextView(image: image, text: text)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

