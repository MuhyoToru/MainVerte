//
//  CommentableProtocol.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 13/09/2024.
//

import Foundation

protocol CommentableProtocol {
    var comments: [Comment] { get set }
    func addComment(_ comment: Comment)
}

