//
//  AddPlantExView.swift
//  MainVerte
//
//  Created by Apprenant89 on 31/07/2024.
//

import SwiftUI

struct AddPlantExView: View {
    
    var plant : Plant
    
    @State private var plantCounter = 0
    
    var rectangleCornerRadius : CGFloat = 20
    var imageCornerRadius : CGFloat = 15
    var height : CGFloat = 88
    
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: rectangleCornerRadius, bottomLeadingRadius: rectangleCornerRadius)
                    .foregroundStyle(.mvWhite)
                UnevenRoundedRectangle(topLeadingRadius: rectangleCornerRadius, bottomLeadingRadius: rectangleCornerRadius)
                    .strokeBorder(.mvLightBlue, lineWidth: 1.5)
                HStack {
                    Image(plant.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width : 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: imageCornerRadius))
                    VStack(alignment : .leading) {
                        Text(plant.name)
                            .foregroundColor(.black)
                            .font(.headline)
                        Text(plant.description)
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    }
                    .padding(.vertical, 10)
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
            ZStack {
                UnevenRoundedRectangle(bottomTrailingRadius: rectangleCornerRadius, topTrailingRadius: rectangleCornerRadius)
                    .foregroundStyle(.mvLightBlue)
                    .frame(width: 40)
                VStack {
                    Button(action: {
                        plantCounter += 1
                    }, label : {
                        Text("+")
                    })
                    Text("\(plantCounter)")
                    Button(action: {
                        if plantCounter > 0 {
                            plantCounter -= 1
                        }
                    }, label : {
                        Text("-")
                    })
                }
                .foregroundStyle(.mvWhite)
                .font(.system(size: 20))
            }
        }
        .frame(height: height)
    }
}

#Preview {
    AddPlantExView(plant : Plant(name: "", scientificName: "", image: "", description: "", size: 0, startSowingDate: .april, endSowingDate: .april, startBloomDate: .april, endBloomDate: .april, minTemperature: 0, maxTemperature: 0, wateringFrequency: 0, wateringQuantity: 0, spacing: 0, plantingMethod: "", startHarvestDate: .april, endHarvestDate: .april, colors: [], difficulty: "", fertilizers: [], diseases: [], exposures: [], soils: [], interiorExterior: [], containers: []))
}
