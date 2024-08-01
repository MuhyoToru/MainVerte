//
//  UserModel.swift
//  MainVerte
//
//  Created by Haiying on 19/07/2024.
//

import Foundation

class User {
    let id: UUID = UUID()
    var name: String
    var picture: String
    var createdSpaces: [MySpace] = []
    var myComments: [Comment] = []
    var favoritePlants: [Plant] = []
    var favoriteSpaces: [IdeaSpace] = []
    var createdIdeaSpaces: [IdeaSpace] = []
    var favoriteTips: [IdeaTip] = []
    var createdIdeaTips: [IdeaSpace] = []
    var favoriteQuestions: [IdeaQuestion] = []
    var createdIdeaQuestions: [IdeaSpace] = []
    
    init(name: String, picture: String) {
        self.name = name
        self.picture = picture
    }
}
