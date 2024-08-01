//
//  ColorButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 31/07/2024.
//

import SwiftUI

struct ColorButtonExView: View {
    
    var colorButton : ColorButton
    @State var isSelected : Bool = false
    
    var buttonSize : CGFloat = 28
    
    var body: some View {
        VStack {
            Button(action: {
                isSelected.toggle()
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
    ColorButtonExView(colorButton : ColorButton(color: .mvFilterRed, colorName: "Red"))
}
