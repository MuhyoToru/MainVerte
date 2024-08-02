//
//  MySpacePlantDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpacePlantDetailsView: View {
    
    var plantation : Plantation
    let dateFormatter = DateFormatter()
    
    var body: some View {
        ZStack {
            VStack {
                TitleExView(title: plantation.plant.name)
                LineSeparatorExView()
                ScrollView {
                    Image(plantation.plant.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width : 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text(plantation.plant.scientificName)
                    Text(plantation.personalNotes)
//                    Text(dateFormatter.string(from: plantation.plantedDate))
                    Text("Une Date")
                    if plantation.container == .inGround {
                        Text("La plante est en terre")
                    } else {
                        Text("La plante est en pot")
                    }
                    Text(plantation.plant.difficulty)
                    Text(plantation.plant.plantingMethod)
                    HStack {
                        Text("Couleur(s) :")
                        ForEach(plantation.plant.colors, id : \.self) { color in
                            ZStack {
                                Image(systemName: "leaf.fill")
                                    .foregroundStyle(color)
                                    .font(.system(size: 36))
                            }
                        }
                        Spacer()
                    }
                    Text("Maladie(s) :")
                    ForEach(plantation.plant.diseases) { disease in
                        HStack {
                            VStack {
                                Image(disease.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width : 70, height: 70)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Text(disease.name)
                                Spacer()
                            }
                            VStack(alignment : .leading) {
                                Text(disease.description)
                                Text(disease.cureMethod)
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .background(BackgroundExView(opacity: 0.8))
    }
}

#Preview {
    MySpacePlantDetailsView(plantation: Plantation(personalNotes: "Ceci est une note personnel", plantedDate: Date.now, plant: PlantViewModel().plants[0], container: PlantContainer.inGround))
}
