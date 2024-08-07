//
//  ImageViewContainer.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

import UIKit

class ImageContainer: UIView {
    private let imageView = UIImageView()
    
    init(image: UIImage, cornerRadius: CGFloat = 20) {
        super.init(frame: .zero)
        setupView(image: image, cornerRadius: cornerRadius)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(image: UIImage, cornerRadius: CGFloat) {
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 176),
        ])
    }
}
