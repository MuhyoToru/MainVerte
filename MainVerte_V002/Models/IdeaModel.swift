//
//  IdeaModel.swift
//  MainVerte
//
//  Created by Sofiane on 19/07/2024.
//

import Foundation

class Idea: Identifiable {
    let id: UUID = UUID()
    var title: String
    var subtitle: String
    var images: String
    var description: String
    var subCategory: String
    var numberLike: Int = 0
    var comments: [Comment] = []
    var isFavorite: Bool = false

    init(title: String, subtitle: String, images: String, description: String, subCategory: String, comments: [Comment] = [], isFavorite: Bool = false) {
        self.title = title
        self.subtitle = subtitle
        self.images = images
        self.description = description
        self.subCategory = subCategory
        self.comments = comments
        self.isFavorite = isFavorite
    }
}
