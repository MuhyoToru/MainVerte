//
//  IsInPotExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 01/08/2024.
//

import SwiftUI

struct IsInPotExView: View {
    @Binding var newSpace : MySpace
    
    @State var firstButtonIsSelected : Bool = true
    @State var secondButtonIsSelected : Bool = false
    
    var widthButton : CGFloat
    var heightButton : CGFloat
    var cornerRadiusButton : CGFloat
    var minimalButtonTextSize : CGFloat
    var maximalButtonTextSize : CGFloat
    var widthText : CGFloat
    
    var body: some View {
        LazyVGrid(columns:[.init(.fixed(widthText * 2)), .init(.adaptive(minimum: widthButton))]) {
            HStack {
                Text("En Pot")
                Spacer()
            }
            Button(action: {
                firstButtonIsSelected = true
                secondButtonIsSelected = false
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: firstButtonIsSelected, text: "Oui", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
            Button(action: {
                firstButtonIsSelected = false
                secondButtonIsSelected = true
            }, label: {
                CreateSpaceGlobalButtonDisplayExView(buttonState: secondButtonIsSelected, text: "Non", widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
            })
        }
    }
}

#Preview {
    IsInPotExView(newSpace: .constant(MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")), widthButton: 84, heightButton: 36, cornerRadiusButton: 10, minimalButtonTextSize: 13, maximalButtonTextSize: 15, widthText: 90)
}
