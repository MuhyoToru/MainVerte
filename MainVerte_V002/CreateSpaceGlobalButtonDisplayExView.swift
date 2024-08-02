//
//  CreateSpaceGlobalButtonDisplayExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 01/08/2024.
//

import SwiftUI

struct CreateSpaceGlobalButtonDisplayExView: View {
    
    var buttonState : Bool
    
    var text : String
    
    var widthButton : CGFloat
    var heightButton : CGFloat
    var cornerRadiusButton : CGFloat
    var minimalButtonTextSize : CGFloat
    var maximalButtonTextSize : CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadiusButton)
                .foregroundStyle(buttonState ? .mvMediumBlue : .mvWhite)
                .frame(width : widthButton , height: heightButton)
            Text(text)
                .foregroundStyle(buttonState ? .mvWhite : .mvDarkGray)
                .bold(buttonState)
                .font(.system(size: buttonState ? maximalButtonTextSize : minimalButtonTextSize))
        }
    }
}

#Preview {
    CreateSpaceGlobalButtonDisplayExView(buttonState : true, text : "Test", widthButton: 60, heightButton: 40, cornerRadiusButton: 10, minimalButtonTextSize: 16, maximalButtonTextSize: 19)
}
