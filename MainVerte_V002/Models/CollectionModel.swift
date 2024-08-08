//
//  CollectionModel.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 08/08/2024.
//

import Foundation

extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
