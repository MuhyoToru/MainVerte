//
//  UserViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation
import Observation

@Observable class UserViewModel {
    var users: [User] = []
    
    init() {
        users = [
            User(name: "", picture: "")
        ]
    }
}
