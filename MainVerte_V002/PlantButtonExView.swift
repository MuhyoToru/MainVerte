//
//  PlantButtonExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 07/08/2024.
//

import SwiftUI

struct PlantButtonExView: View {
    
    var plant : Plant
    
    var body: some View {
        NavigationLink ( destination : {
            ListPlantDetailsView(plant : plant)
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
                    Image(plant.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width : 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    VStack(alignment : .leading, spacing : 0) {
                        TitleExView(title: plant.name, textSize: 22, textColor: .mvDarkGreen)
                        Text(plant.description)
                            .frame(height: 30)
                            .foregroundStyle(.mvMediumGray)
                    }
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
    PlantButtonExView(plant: PlantViewModel().plants[0])
}
