//
//  IdeaModel.swift
//  MainVerte
//
//  Created by Sofiane on 19/07/2024.
//

import Foundation

class Idea: Identifiable, LikeProtocol, CommentableProtocol {
    let id: UUID = UUID()
    var title: String
    var subtitle: String
    var images: String
    var description: String
    var subCategory: String
    var comments: [Comment] = []
    var isFavorite: Bool = false
    
    var likeManager = LikeManagerModel()

    init(title: String, subtitle: String, images: String, description: String, subCategory: String, comments: [Comment] = [], isFavorite: Bool = false) {
        self.title = title
        self.subtitle = subtitle
        self.images = images
        self.description = description
        self.subCategory = subCategory
        self.comments = comments
        self.isFavorite = isFavorite
    }
    
    func addComment(_ comment: Comment) {
        comments.append(comment)
    }
}


