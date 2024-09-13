//
//  ColorConverterModel.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 13/09/2024.
//

import Foundation
import SwiftUI

class ColorConverter {
    @Environment(\.self) var environment
    
    func colorConvertionFor(array : [Color]) -> [Color] {
        var newArray : [Color] = []
        for color in array {
            newArray.append(colorConvertionFor(oneColor: color))
        }
        return [.red]
    }
    
    func colorConvertionFor(oneColor : Color) -> Color {
        let colorArray : [Color] = [.mvFilterBlue, .mvFilterGreen, .mvFilterPink, .mvFilterPurple, .mvFilterRed, .mvFilterWhite, .mvFilterYellow]
        var score : Double = 0
        var bestScore : Double = 4
        var closestColor : Color = colorArray[0]
        
        for actualColor in colorArray {
            let resolvedActualColor = actualColor.resolve(in: environment)
            let resolvedColor = oneColor.resolve(in: environment)
            
            score += Double(abs(resolvedColor.red - resolvedActualColor.red))
            score += Double(abs(resolvedColor.green - resolvedActualColor.green))
            score += Double(abs(resolvedColor.blue - resolvedActualColor.blue))
            score += Double(abs(resolvedColor.opacity - resolvedActualColor.opacity))

            if score < bestScore {
                bestScore = score
                closestColor = actualColor
            }
            
            score = 0
        }
        
        return closestColor
    }
}

