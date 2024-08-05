//
//  ClassImageTextView.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 02/08/2024.
//

import UIKit

class ImageTextView: UIView {
    private let imageView = UIImageView()
    private let textView = UITextView()
    
    init(image: UIImage, text: String) {
        super.init(frame: .zero)
        setupViews(image: image, text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(image: UIImage, text: String ) {
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        
        textView.text = text
        textView.font = UIFont .systemFont(ofSize: 16)
        textView.textAlignment = .justified
        textView.isEditable = false
        textView.isScrollEnabled = false
    
        
        addSubview(imageView)
        addSubview(textView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 176),
            
            textView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
            textView.heightAnchor.constraint(equalToConstant: 100),
            
            
        
        
        
        ])
        
    }
}
