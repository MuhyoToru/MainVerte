//
//  ColorButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 31/07/2024.
//

import SwiftUI

struct ColorButtonExView: View {
    
    var colorButton : ColorButton
    @Binding var newSpace : MySpace
    @State var isSelected : Bool = false
    
    var buttonSize : CGFloat = 28
    
    var body: some View {
        VStack {
            Button(action: {
                isSelected.toggle()
                if isSelected {
                    newSpace.color.append(colorButton.color)
                } else {
                    newSpace.color.remove(at: newSpace.color.firstIndex(of: colorButton.color)!)
                }
            }, label: {
                ZStack {
                    Image(systemName: "leaf.fill")
                        .foregroundStyle(colorButton.color)
                        .font(.system(size: buttonSize))
                    if isSelected {
                        Image(systemName: "leaf")
                            .font(.system(size: buttonSize))
                            .foregroundStyle(.mvBlack)
                            .offset(x : -2, y : -2)
                    }
                }
            })
            Text(colorButton.colorName)
                .foregroundStyle(.mvBlack)
        }
    }
}


#Preview {
    ColorButtonExView(colorButton : ColorButton(color: .mvFilterRed, colorName: "Red"), newSpace: .constant(MySpace(name: "Test", image: "MVTomato", city: "Test", difficulty: "Test", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "Test")))
}
