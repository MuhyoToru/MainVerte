//
//  IdeaModel.swift
//  MainVerte
//
//  Created by Sofiane on 19/07/2024.
//

import Foundation

class Idea{
    let id: UUID = UUID()
    var title: String
    var subtitle: String
    var images : [String]
    var description: String
    var numberLike: Int = 0
    var comments: [Comment] = []
    
    init(title: String, subtitle: String, images: [String], description: String) {
        self.title = title
        self.subtitle = subtitle
        self.images = images
        self.description = description
    }
}
