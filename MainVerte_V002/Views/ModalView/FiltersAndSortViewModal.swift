//
//  FiltersAndSortViewModal.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct FiltersAndSortViewModal: View {
    
    var heightModal : CGFloat
    @Binding var isVisible : Bool
    var filterArray : [String] = ["A -> Z", "Z -> A", "Taille ↑", "Taille ↓"]
    var colors : [ColorButton] = [ColorButton(color: .mvFilterRed, colorName: "Rouge"), ColorButton(color: .mvFilterBlue, colorName: "Bleu"), ColorButton(color: .mvFilterPink, colorName: "Rose"), ColorButton(color: .mvFilterGreen, colorName: "Vert"), ColorButton(color: .mvFilterWhite, colorName: "Blanc"), ColorButton(color: .mvFilterYellow, colorName: "Jaune"), ColorButton(color: .mvFilterPurple, colorName: "Violet")]
    
    var body: some View {
        ZStack {
            Color.mvLightGreen
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment : .leading, spacing: 8) {
                    TitleExView(title: "Tri", textColor: .mvDarkGreen)
                    ForEach(filterArray, id : \.self) { filter in
                        HStack {
                            Button(action : {
                                
                            }, label : {
                                Image(systemName: "circle")
                            })
                            Text(filter)
                        }
                    }
                    TitleExView(title: "Filtres", textColor: .mvDarkGreen)
                    Text("Couleur")
                        .font(.system(size: 22))
                        .foregroundStyle(.mvDarkGray)
                    HStack {
                        ForEach(colors) { colorButton in
                            ZStack {
                                Image(systemName: "leaf.fill")
                                    .foregroundStyle(.mvLightGray).opacity(0.5)
                                    .font(.system(size: 36))
                                    .offset(x : -3, y : 3)
                                Image(systemName: "leaf.fill")
                                    .foregroundStyle(colorButton.color)
                                    .font(.system(size: 36))
                            }
                        }
                    }
                    Text("Type")
                        .font(.system(size: 22))
                        .foregroundStyle(.mvDarkGray)
                    HStack {
                        ZStack {
                            Capsule()
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Capsule()
                                .stroke(.mvDarkGreen)
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Text("Fleur")
                                .foregroundStyle(.mvDarkGreen)
                        }
                        ZStack {
                            Capsule()
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Capsule()
                                .stroke(.mvDarkGreen)
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Text("Arbre")
                                .foregroundStyle(.mvDarkGreen)
                        }
                    }
                    Text("Saison")
                        .font(.system(size: 22))
                        .foregroundStyle(.mvDarkGray)
                    HStack {
                        ZStack {
                            Capsule()
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Capsule()
                                .stroke(.mvDarkGreen)
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Text("Hiver")
                                .foregroundStyle(.mvDarkGreen)
                        }
                        ZStack {
                            Capsule()
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Capsule()
                                .stroke(.mvDarkGreen)
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Text("Printemps")
                                .foregroundStyle(.mvDarkGreen)
                        }
                        ZStack {
                            Capsule()
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Capsule()
                                .stroke(.mvDarkGreen)
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Text("Ete")
                                .foregroundStyle(.mvDarkGreen)
                        }
                    }
                    HStack {
                        ZStack {
                            Capsule()
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Capsule()
                                .stroke(.mvDarkGreen)
                                .foregroundStyle(.mvWhite)
                                .frame(width: 100, height: 40)
                            Text("Automne")
                                .foregroundStyle(.mvDarkGreen)
                        }
                    }
                }
            }
        }
        .presentationDetents([.fraction(heightModal)])
    }
}

#Preview {
    FiltersAndSortViewModal(heightModal: 0.8, isVisible: .constant(true))
}
