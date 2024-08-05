//
//  InteriorOrExteriorExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 01/08/2024.
//

import SwiftUI

struct InteriorOrExteriorExView: View {
    
    @Binding var newSpace : MySpace
    @Binding var firstButtonIsSelected : Bool
    @Binding var secondButtonIsSelected : Bool
    
    var widthButton : CGFloat
    var heightButton : CGFloat
    var cornerRadiusButton : CGFloat
    var minimalButtonTextSize : CGFloat
    var maximalButtonTextSize : CGFloat
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                newSpace.interiorExterior = .interior
                firstButtonIsSelected = true
                secondButtonIsSelected = false
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: firstButtonIsSelected, text: "Intérieur", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Spacer()
            Text("ou")
                .foregroundStyle(.mvMediumGray)
            Spacer()
            Button(action: {
                newSpace.interiorExterior = .exterior
                firstButtonIsSelected = false
                secondButtonIsSelected = true
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: secondButtonIsSelected, text: "Extérieur", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Spacer()
        }
        .onAppear(perform: {
            if newSpace.interiorExterior == .interior {
                firstButtonIsSelected = true
                secondButtonIsSelected = false
            } else {
                firstButtonIsSelected = false
                secondButtonIsSelected = true
            }
        })
    }
}

#Preview {
    InteriorOrExteriorExView(newSpace: .constant(MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")),firstButtonIsSelected: .constant(true), secondButtonIsSelected: .constant(false), widthButton: 84, heightButton: 36, cornerRadiusButton: 10, minimalButtonTextSize: 13, maximalButtonTextSize: 15)
}
