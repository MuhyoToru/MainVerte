//
//  ColorButtonModel.swift
//  MainVerte
//
//  Created by Apprenant 141 on 31/07/2024.
//

import SwiftUI

struct ColorButton: Identifiable {
    var id: UUID = UUID()
    var color : Color
    var colorName : String
    
    init(color: Color, colorName: String) {
        self.color = color
        self.colorName = colorName
    }
}
