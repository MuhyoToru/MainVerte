//
//  CommentModel.swift
//  MainVerte
//
//  Created by Haiying on 19/07/2024.
//

import Foundation

class Comment {
    let id: UUID = UUID()
    var text: String
    let creationDate: Date
    var modificationDate: Date
    
    init(text: String, creationDate: Date, modificationDate: Date) {
        self.text = text
        self.creationDate = creationDate
        self.modificationDate = modificationDate
    }
}
