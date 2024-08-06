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
    
    @State var isInside : Bool = true
    @State var isOutside : Bool = false
    
    @State var hasAnImage : Bool = false
    @State var listIsFold : Bool = true
    
    var colors : [ColorButton] = [ColorButton(color: .mvFilterRed, colorName: "Rouge"), ColorButton(color: .mvFilterBlue, colorName: "Bleu"), ColorButton(color: .mvFilterPink, colorName: "Rose"), ColorButton(color: .mvFilterGreen, colorName: "Vert"), ColorButton(color: .mvFilterWhite, colorName: "Blanc"), ColorButton(color: .mvFilterYellow, colorName: "Jaune")]
    var soils : [Soil] = SoilViewModel().soils
    @Binding var mySpaces : [MySpace]
    
    var titleSize : CGFloat = 28
    var textSize : CGFloat = 18
    var widthButton : CGFloat = 82
    var heightButton : CGFloat = 36
    var cornerRadiusButton : CGFloat = 8
    var minimalButtonTextSize : CGFloat = 13
    var maximalButtonTextSize : CGFloat = 15
    var widthText : CGFloat = 90
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: MySpacesView()) {
                    Image(systemName: "chevron.left")
                    Text("Mes Espaces")
                }
                .foregroundColor(Color.mvMediumGray)
                .navigationBarBackButtonHidden(true)
                Spacer()
            }
            TitleExView(title: "Créer un Espace")
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40)
                    .foregroundStyle(.mvLightGreen)
                ScrollView {
                    VStack(spacing : 18) {
                        Text("Nom ")
                            .font(.system(size: textSize * 1.2))
                        TextField("Entrer un Nom", text: $newSpace.name)
                            .multilineTextAlignment(.center)
                            .font(.system(size: titleSize))
                        HStack {
                            Text("Superficie : ")
                            TextField("Superficie", text: $surface)
                                .frame(width: 90)
                                .keyboardType(.decimalPad)
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
                        InteriorOrExteriorExView(newSpace: $newSpace, firstButtonIsSelected: $isInside, secondButtonIsSelected: $isOutside, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize)
                        ExposureExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                        VStack(spacing : 18) {
                            SoilExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                            AcceptedFaunaExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                        }
                        .disabled(isInside)
                        .opacity(isInside ? 0.4 : 1)
                        //                        .animation(.easeInOut, value: isOutside)
                        DifficultyExView(newSpace: $newSpace, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                        LazyVGrid(columns : [GridItem(.adaptive(minimum: 50))]) {
                            ForEach(colors) { colorButton in
                                ColorButtonExView(colorButton: colorButton, newSpace : $newSpace)
                            }
                        }
                        .frame(height: 44)
                        NavigationLink (destination : {
                            
                        }, label : {
                            ButtonAddExView(text: "Ajouter une Plante", iconName: "plus", fontSize: 12, cornerRadius: 5, textWeight: .bold, width: 160, height: 30)
                        })
                        if !hasAnImage {
                            Button (action : {
                                newSpace.image = "MVGarden01"
                                if !hasAnImage {
                                    hasAnImage = true
                                }
                            }, label : {
                                ButtonAddExView(text: "Ajouter une Photo", iconName: "camera", fontSize: 12, cornerRadius: 5, textWeight: .bold, width: 160, height: 30)
                            })
                        } else {
                            Image("MVGarden01")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width : 200, height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Button(action : {
                            mySpaces.append(newSpace)
                            print(mySpaces)
                        }, label: {
                            ZStack {
                                ButtonAddExView(text: "Valider", iconName: "checkmark", fontSize: 24, cornerRadius: 5, textWeight: .bold, width: 134, height: 56)
                            }
                        })
                    }
                    .padding()
                }
                .clipShape(UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40))
            }
        }
        .background(BackgroundExView(opacity: 0.5))
    }
}

#Preview {
    CreateSpaceView(mySpaces: .constant(MySpaceViewModel().mySpaces))
}
