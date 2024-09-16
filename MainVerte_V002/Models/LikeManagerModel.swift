//
//  LikeManagerModel.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 13/09/2024.
//

import Foundation

class LikeManagerModel {
    private(set) var numberLike: Int = 0
    
    func like() {
        numberLike += 1
    }
    
    func unlike() {
        numberLike = max(0, numberLike - 1)
    }
}
