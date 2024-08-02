//
//  ExposureExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 01/08/2024.
//

import SwiftUI

struct ExposureExView: View {
    
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
                Text("Exposition")
                Spacer()
            }
            Button(action: {
                firstButtonIsSelected = true
                secondButtonIsSelected = false
                thirdButtonIsSelected = false
                
                newSpace.exposure = .fullSun
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: firstButtonIsSelected, text: "Plein Soleil", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Button(action: {
                firstButtonIsSelected = false
                secondButtonIsSelected = true
                thirdButtonIsSelected = false
                
                newSpace.exposure = .partialShade
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: secondButtonIsSelected, text: "Mi-Ombre", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Button(action: {
                firstButtonIsSelected = false
                secondButtonIsSelected = false
                thirdButtonIsSelected = true
                
                newSpace.exposure = .fullShade
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: thirdButtonIsSelected, text: "Ombre", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
        }
        .onAppear(perform: {
            if newSpace.exposure == .fullSun {
                firstButtonIsSelected = true
                secondButtonIsSelected = false
                thirdButtonIsSelected = false
            } else if newSpace.exposure == .partialShade{
                firstButtonIsSelected = false
                secondButtonIsSelected = true
                thirdButtonIsSelected = false
            } else {
                firstButtonIsSelected = false
                secondButtonIsSelected = false
                thirdButtonIsSelected = true
            }
        })
    }
}

#Preview {
    ExposureExView(newSpace: .constant(MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")), widthButton: 84, heightButton: 36, cornerRadiusButton: 10, minimalButtonTextSize: 13, maximalButtonTextSize: 15, widthText: 100)
}
