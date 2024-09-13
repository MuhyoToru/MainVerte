//
//  MySpacePlantDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct MySpacePlantDetailsView: View {
    
    @State var plantation : Plantation
    let dateFormatter = DateFormatter()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }, label : {
                        Image(systemName: "chevron.left")
                        Text("Mes Plantes")
                    })
                    .foregroundColor(Color.mvMediumGray)
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                }
                .padding(.horizontal, 16)
                TitleExView(title: plantation.plant.name)
                LineSeparatorExView()
                ScrollView {
                    MySpacePlantDetailsViewControllerRepresentable(plantation: plantation, spacing: 16)
                        .frame(height: 450)
                    VStack(alignment : .leading, spacing : 8) {
                        TitleExView(title: "Description :", textSize: 26, textColor: .mvDarkGreen)
                        Text(plantation.plant.description)
                        TitleExView(title: "Taille :", textSize: 26, textColor: .mvDarkGreen)
                        Text("\(String(plantation.plant.size))cm")
                        TitleExView(title: "Semis :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Mois de début de semi : \(plantation.plant.startSowingDate!.rawValue)")
                        Text("Mois de fin de semi : \(plantation.plant.endSowingDate!.rawValue)")
                        TitleExView(title: "Floraison :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Mois de début de floraison : \(plantation.plant.startBloomDate!.rawValue)")
                        Text("Mois de fin de floraison : \(plantation.plant.endBloomDate!.rawValue)")
                        TitleExView(title: "Température :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Température Minimum : \(plantation.plant.minTemperature, specifier: "%.2f")°C")
                        Text("Température Maximum : \(plantation.plant.maxTemperature, specifier: "%.2f")°C")
                        TitleExView(title: "Arrosage :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Fréquence d'arrosage : Tout les \(plantation.plant.wateringFrequency) jour(s)")
                        Text("Quantité d'arrosage : \(plantation.plant.wateringQuantity, specifier: "%.2f")L")
                        TitleExView(title: "Plantation :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Espacement entre 2 plantes : \(plantation.plant.spacing, specifier: "%.2f")cm")
                        Text("Méthode de plantation : \(plantation.plant.plantingMethod)")
                        TitleExView(title: "Récolte :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Mois de début de récolte : \(plantation.plant.startHarvestDate!)")
                        Text("Mois de fin de récolte : \(plantation.plant.endHarvestDate!)")
                        TitleExView(title: "Couleur(s) :", textSize: 26, textColor: .mvDarkGreen)
                        HStack {
                            ForEach(plantation.plant.colors!, id : \.self) { color in
                                Spacer()
                                ZStack {
                                    Image(systemName: "leaf.fill")
                                        .foregroundStyle(.mvWhite)
                                        .font(.system(size: 36))
                                        .offset(x : -3, y : 3)
                                    Image(systemName: "leaf.fill")
                                        .foregroundStyle(color)
                                        .font(.system(size: 36))
                                }
                                Spacer()
                            }
                        }
                        TitleExView(title: "Difficulté d'entretien :", textSize: 26, textColor: .mvDarkGreen)
                        Text(plantation.plant.difficulty)
                        TitleExView(title: "Fertilisant(s) :", textSize: 26, textColor: .mvDarkGreen)
                        ForEach(plantation.plant.fertilizers!) { fertilizer in
                            Text(fertilizer.name)
                        }
                        TitleExView(title: "Maladies :", textSize: 26, textColor: .mvDarkGreen)
                        ForEach(plantation.plant.diseases!) { disease in
                            DiseaseExView(disease: Disease(id: UUID().uuidString ,name: "cekdfbcvf", image: "vudsov", description: "udrv", cureMethod: "vfouerhv"))
                        }
                        TitleExView(title: "Exposition(s) :", textSize: 26, textColor: .mvDarkGreen)
                        ForEach(plantation.plant.exposures!, id : \.self) { exposure in
                            Text(exposure.rawValue)
                        }
                        TitleExView(title: "Sol(s) :", textSize: 26, textColor: .mvDarkGreen)
                        ForEach(plantation.plant.soils!) { soil in
                            Text(soil.name)
                        }
                        TitleExView(title: "Intérieur ou Extérieur ?", textSize: 26, textColor: .mvDarkGreen)
                        if plantation.plant.interiorExterior!.count >= 2 {
                            Text("Intérieur ou Extérieur")
                        } else {
                            if plantation.plant.interiorExterior![0] == .exterior {
                                Text("Extérieur")
                            } else {
                                Text("Intérieur")
                            }
                        }
                        TitleExView(title: "Conteneur :", textSize: 26, textColor: .mvDarkGreen)
                        if plantation.plant.containers!.count >= 2 {
                            Text("En pot ou En terre")
                        } else {
                            if plantation.plant.containers![0] == .inGround {
                                Text("En terre")
                            } else {
                                Text("En pot")
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 16)
                }
                .padding(.horizontal, 16)
            }
        }
        .background(BackgroundExView(opacity: 0.9))
    }
}

#Preview {
    MySpacePlantDetailsView(plantation: Plantation(personalNotes: "Ceci est une note personnel", plantedDate: Date.now, plant: Plant(id: UUID().uuidString, name: "Test Nom", scientificName: "Test Nom Scientifique", image: "MVTomato", description: "Ceci est une description", size: 1, startSowingDate: .april, endSowingDate: .april, startBloomDate: .april, endBloomDate: .april, minTemperature: 1, maxTemperature: 1, wateringFrequency: 1, wateringQuantity: 1, spacing: 1, plantingMethod: "Ceci est une méthode de plantation", startHarvestDate: .april, endHarvestDate: .april, colors: [], difficulty: "Facile", fertilizers: [], diseases: [], exposures: [], soils: [], interiorExterior: [.exterior], containers: [.inGround]), container: PlantContainer.inGround))
}
