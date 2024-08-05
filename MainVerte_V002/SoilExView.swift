//
//  SoilExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 02/08/2024.
//

import SwiftUI

struct SoilExView: View {
    
    var soils : [Soil] = SoilViewModel().soils
    
    @Binding var newSpace : MySpace
    
    @State var listIsFold : Bool = true
    
    var widthButton : CGFloat
    var heightButton : CGFloat
    var cornerRadiusButton : CGFloat
    var minimalButtonTextSize : CGFloat
    var maximalButtonTextSize : CGFloat
    var widthText : CGFloat
    
    var body: some View {
        LazyVGrid(columns:[.init(.fixed(widthText)), .init(.adaptive(minimum: widthButton * 3))]) {
            HStack {
                Text("Sol")
                Spacer()
            }
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadiusButton)
                    .foregroundStyle(.mvWhite)
                    .frame(height: listIsFold ? heightButton : heightButton * CGFloat(soils.count + 1))
                VStack {
                    HStack {
                        if !newSpace.soil.isEmpty {
                            switch newSpace.soil.count {
                            case 1:
                                Text("\(newSpace.soil[0].name)")
                            case 2:
                                Text("\(newSpace.soil[0].name), \(newSpace.soil[1].name)")
                            default :
                                Text("\(newSpace.soil[0].name), \(newSpace.soil[1].name)...")
                            }
                        } else {
                            Text("Choisir un sol")
                        }
                        Spacer()
                        Button(action : {
                            listIsFold.toggle()
                        }, label : {
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.mvDarkGray)
                                .rotationEffect(listIsFold ? .zero : .degrees(90))
                        })
                    }
                    if !listIsFold {
                        VStack(spacing : 0) {
                            ForEach(soils) { soil in
                                SoilButtonSelectionExView(newSpace: $newSpace, soil: soil, widthButton: widthButton, heightButton: heightButton, cornerRadiusButton: cornerRadiusButton, minimalButtonTextSize: minimalButtonTextSize, maximalButtonTextSize: maximalButtonTextSize, widthText: widthText)
                            }
                        }
                    }
                }
                .font(.system(size: minimalButtonTextSize))
                .padding(.horizontal, 16)
            }
        }
        .animation(.easeInOut, value: listIsFold)
    }
}

#Preview {
    SoilExView(newSpace: .constant(MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")), widthButton: 84, heightButton: 36, cornerRadiusButton: 10, minimalButtonTextSize: 13, maximalButtonTextSize: 15, widthText: 90)
}
