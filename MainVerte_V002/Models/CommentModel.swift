//
//  CommentModel.swift
//  MainVerte
//
//  Created by Haiying on 19/07/2024.
//

import Foundation

//class Comment {
//    let id: UUID = UUID()
//    var text: String
//    let creationDate: Date
//    var modificationDate: Date
//    
//    init(text: String, creationDate: Date, modificationDate: Date) {
//        self.text = text
//        self.creationDate = creationDate
//        self.modificationDate = modificationDate
//    }
//}

class Comment: Identifiable {
    let id: UUID = UUID()
    var text: String
    let creationDate: Date
    var modificationDate: Date
    var image: String
    var isCurrentUser: Bool

    init(text: String, creationDate: Date, modificationDate: Date, image: String, isCurrentUser: Bool = false) {
        self.text = text
        self.creationDate = creationDate
        self.modificationDate = modificationDate
        self.image = image
        self.isCurrentUser = isCurrentUser
    }
}
