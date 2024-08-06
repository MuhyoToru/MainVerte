//
//  MySpaceButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct MySpaceButtonExView: View {
    
    var mySpace : MySpace
    
    var body: some View {
        NavigationLink ( destination : {
            MySpacePlantsView(mySpace: mySpace)
        }, label : {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.white)
                    .frame(height : 88)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.mvDarkGreen, lineWidth: 1.5)
                    .foregroundStyle(.white)
                    .frame(height : 88)
                HStack {
                    Image(mySpace.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width : 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    TitleExView(title: mySpace.name, textSize: 30, textColor: .mvDarkGreen)
                    Spacer()
                    Image(systemName: "arrow.right")
                        .foregroundStyle(.mvMediumGray)
                }
                .padding(.horizontal, 16)
            }
        })
    }
}

#Preview {
    MySpaceButtonExView(mySpace:  MySpace(name: "Jardin", image: "MVGarden01", city: "Orange", difficulty: "Facile", area: 10, acceptedFauna: true, color: [.gray], exposure: Exposure.fullShade, soil: [SoilViewModel().soils[0]], interiorExterior: InteriorExterior.exterior, createdDate: Date.now, personalNotes: ""))
}
