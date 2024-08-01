//
//  IdeaTipViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

class IdeaTipViewModel: ObservableObject {
    @Published var ideaTips : [IdeaTip] = []
    
    init() {
        ideaTips = [
            IdeaTip(title: "", subtitle: "", images: [], description: "")
        ]
    }
}
