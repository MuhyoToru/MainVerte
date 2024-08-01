//
//  IdeaSpaceViewModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 19/07/2024.
//

import Foundation

class IdeaSpaceViewModel: ObservableObject {
    @Published var ideaSpaces : [IdeaSpace] = []
    
    init() {
        ideaSpaces = [
            IdeaSpace(title: "", subtitle: "", images: [], description: "")
        ]
    }
}
