//
//  CreateSpaceView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct CreateSpaceView: View {
    
    @State var nameSpace : String = ""
    @State var surface : String = ""
    @State var city : String = ""
    @State var exposure : Exposure = .fullSun
    @State var soil : Soil = SoilViewModel().soils[0]
    @State var difficulty : String = "Facile"
    @State var acceptedFauna : Bool = true
    @State var isInside : Bool = true
    @State var isInPot : Bool = true
    
    var whereItIs : [String] = ["Intérieur", "Extérieur"]
    var exposures : [Exposure] = [.fullShade, .partialShade, .fullSun]
    var soils: [Soil] = SoilViewModel().soils
    var difficultys : [String] = ["Facile", "Moyen", "Difficile"]
    var colors : [ColorButton] = [ColorButton(color: .mvFilterRed, colorName: "Rouge"), ColorButton(color: .mvFilterBlue, colorName: "Bleu"), ColorButton(color: .mvFilterPink, colorName: "Rose"), ColorButton(color: .mvFilterGreen, colorName: "Vert"), ColorButton(color: .mvFilterWhite, colorName: "Blanc"), ColorButton(color: .mvFilterYellow, colorName: "Jaune")]
    
    var titleSize : CGFloat = 24
    var textSize : CGFloat = 18
    
    var body: some View {
        VStack {
            TitleExView(title: "Créer un Espace")
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40)
                    .foregroundStyle(.mvLightGreen)
                VStack(spacing : 16) {
                    HStack {
                        Text("Nom : ")
                        TextField("Nom", text: $nameSpace)
                    }
                    .font(.system(size: titleSize))
                    VStack(alignment : .leading, spacing : 16) {
                        HStack {
                            Text("Superficie : ")
                            TextField("Superficie", text: $surface)
                                .frame(width: 100)
                            Text("m2")
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Text("Ville : ")
                            TextField("Ville", text: $city)
                                .frame(width: 100)
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.mvWhite)
                                        .frame(height: 44)
                                    Text("Intérieur")
                                        .foregroundStyle(.mvDarkGray)
                                }
                            })
                            Text("ou")
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.mvWhite)
                                        .frame(height: 44)
                                    Text("Extérieur")
                                        .foregroundStyle(.mvDarkGray)
                                }
                            })
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Text("Exposition")
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Text("Sol")
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                HStack {
                                    Text("Test")
                                    Spacer()
                                    Image(systemName: "arrow.down")
                                }
                                .padding(.horizontal, 16)
                            }
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Text("Difficulté")
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Text("Faune accepté")
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                        }
                        .font(.system(size: textSize))
                        HStack {
                            Text("En pot ou En sol")
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.blue)
                                    .frame(height: 44)
                                Text("Test")
                            }
                        }
                        .font(.system(size: textSize))
                        LazyVGrid(columns : [GridItem(.adaptive(minimum: 50))]) {
                            ForEach(colors) { colorButton in
                                ColorButtonExView(colorButton: colorButton)
                            }
                        }
                    }

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
