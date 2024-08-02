//
//  CreateSpaceView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct CreateSpaceView: View {
    
    @State var newSpace : MySpace = MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullSun, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")
    @State var surface : String = ""
    @State var soil : Soil = SoilViewModel().soils[0]
    @State var difficulty : String = "Facile"
    @State var acceptedFauna : Bool = true
    @State var isInside : Bool = true
    @State var isInPot : Bool = true
    
    var colors : [ColorButton] = [ColorButton(color: .mvFilterRed, colorName: "Rouge"), ColorButton(color: .mvFilterBlue, colorName: "Bleu"), ColorButton(color: .mvFilterPink, colorName: "Rose"), ColorButton(color: .mvFilterGreen, colorName: "Vert"), ColorButton(color: .mvFilterWhite, colorName: "Blanc"), ColorButton(color: .mvFilterYellow, colorName: "Jaune")]
    
    var titleSize : CGFloat = 28
    var textSize : CGFloat = 18
    var widthButton : CGFloat = 82
    var heightButton : CGFloat = 36
    var cornerRadiusButton : CGFloat = 10
    var minimalButtonTextSize : CGFloat = 13
    var maximalButtonTextSize : CGFloat = 15
    var widthText : CGFloat = 90
    
    var body: some View {
        VStack {
            TitleExView(title: "Créer un Espace")
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40)
                    .foregroundStyle(.mvLightGreen)
                VStack(spacing : 16) {
                    VStack {
                        Text("Nom ")
                            .font(.system(size: textSize * 1.2))
                        HStack {
//                            Image(systemName: "pencil")
//                                .foregroundStyle(.mvMediumGray)
                            TextField("Entrer un Nom", text: $newSpace.name)
                                .multilineTextAlignment(.center)
                                .font(.system(size: titleSize))
                        }
                    }
                    HStack {
                        Text("Superficie : ")
                        TextField("Superficie", text: $surface)
                            .frame(width: 90)
                        Text("m²")
                        Spacer()
                    }
                    .font(.system(size: textSize))
                    HStack {
                        Text("Ville : ")
                        TextField("Ville", text: $newSpace.city)
                            .frame(width: 100)
                        Spacer()
                    }
                    .font(.system(size: textSize))
                    InteriorOrExteriorExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
                    ExposureExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                    HStack {
                        Text("Sol")
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.mvWhite)
                                .frame(height: heightButton)
                            HStack {
                                Text("Test")
                                    .font(.system(size: minimalButtonTextSize))
                                Spacer()
                                Image(systemName: "arrow.down")
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                    .font(.system(size: textSize))
                    DifficultyExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                    AcceptedFaunaExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
//                    IsInPotExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                    LazyVGrid(columns : [GridItem(.adaptive(minimum: 50))]) {
                        ForEach(colors) { colorButton in
                            ColorButtonExView(colorButton: colorButton, newSpace : $newSpace)
                        }
                    }
                    .frame(height: 44)
                    Spacer()
                    HStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: cornerRadiusButton)
                            .frame(width: 140)
                        Spacer()
                        RoundedRectangle(cornerRadius: cornerRadiusButton)
                            .frame(width: 140)
                        Spacer()
                    }
                    .frame(height: heightButton)
                    Spacer()
                }
                .padding()
            }
        }
        .background(BackgroundExView(opacity: 0.5))
    }
}

#Preview {
    CreateSpaceView()
}
