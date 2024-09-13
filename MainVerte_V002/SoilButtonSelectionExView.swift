//
//  SoilButtonSelectionExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 02/08/2024.
//

import SwiftUI

struct SoilButtonSelectionExView: View {
    
    @Binding var newSpace : MySpace
    
    var soil : Soil
    
    var widthButton : CGFloat
    var heightButton : CGFloat
    var cornerRadiusButton : CGFloat
    var minimalButtonTextSize : CGFloat
    var maximalButtonTextSize : CGFloat
    var widthText : CGFloat
    
    @State var isSelected : Bool = false
    
    var body: some View {
        HStack {
            Text(soil.name)
            Spacer()
            Button(action: {
                isSelected.toggle()
                if isSelected {
                    newSpace.soil.append(soil)
                } else {
                    newSpace.soil.remove(at: newSpace.soil.firstIndex(of: soil)!)
                }
                
                print(newSpace.soil)
            }, label: {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(isSelected ? .mvMediumGreen : .mvDarkGray)
            })
        }
        .frame(height: heightButton)
        .onAppear(perform: {
            isSelected = newSpace.soil.contains { soil in
                return soil.name == self.soil.name
            }
        })
    }
}

#Preview {
    SoilButtonSelectionExView(newSpace: .constant(MySpace(name: "", image: "", city: "", difficulty: "", area: 0, acceptedFauna: true, color: [], exposure: .fullShade, soil: [], interiorExterior: .interior, existingPlant: [], createdDate: Date.now, personalNotes: "")), soil : Soil(id : UUID(), name: "Test", description: "Test", characteristics: "Test"), widthButton: 84, heightButton: 36, cornerRadiusButton: 10, minimalButtonTextSize: 13, maximalButtonTextSize: 15, widthText: 90)
}
