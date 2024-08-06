//
//  ImageUIView.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

import SwiftUI

struct ImageUIView: UIViewRepresentable {
    let image: UIImage
    
    func makeUIView(context: Context) -> some UIView {
        return ImageContainer(image: image)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

#Preview {
    ImageUIView(image: UIImage(named: "MVBathroom01") ?? UIImage())
        .padding()
}

