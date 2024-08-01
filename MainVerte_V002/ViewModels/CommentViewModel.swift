//
//  CommentViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation

@Observable class CommentViewModel {
    var comments : [Comment] = []
    
    init() {
        comments = [
            Comment(text: "", creationDate: Date.now, modificationDate: Date.now)
        ]
    }
}
