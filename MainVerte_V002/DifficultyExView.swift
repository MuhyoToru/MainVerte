//
//  DiificultyExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 01/08/2024.
//

import SwiftUI

struct DifficultyExView: View {
    
    @Binding var newSpace : MySpace
    
    @State var firstButtonIsSelected : Bool = true
    @State var secondButtonIsSelected : Bool = false
    @State var thirdButtonIsSelected : Bool = false
    
    var widthButton : CGFloat
    var heightButton : CGFloat
    var cornerRadiusButton : CGFloat
    var minimalButtonTextSize : CGFloat
    var maximalButtonTextSize : CGFloat
    var widthText : CGFloat
    
    var body: some View {
        LazyVGrid(columns:[.init(.fixed(widthText)), .init(.adaptive(minimum: widthButton))]) {
            HStack {
                Text("Difficulté")
                Spacer()
            }
            Button(action: {
                firstButtonIsSelected = true
                secondButtonIsSelected = false
                thirdButtonIsSelected = false
                
                newSpace.difficulty = "Facile"
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: firstButtonIsSelected, text: "Facile", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Button(action: {
                firstButtonIsSelected = false
                secondButtonIsSelected = true
                thirdButtonIsSelected = false
                
                newSpace.difficulty = "Moyen"
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: secondButtonIsSelected, text: "Moyen", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Button(action: {
                firstButtonIsSelected = false
                secondButtonIsSelected = false
                thirdButtonIsSelected = true
                
                newSpace.difficulty = "Difficile"
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: thirdButtonIsSelected, text: "Difficile", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
        }
    }
}

#Preview {
    DifficultyExView(newSpace: .constant(MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")), widthButton: 84, heightButton: 36, cornerRadiusButton: 10, minimalButtonTextSize: 13, maximalButtonTextSize: 15, widthText: 90)
}

