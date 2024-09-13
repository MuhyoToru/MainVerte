//
//  ListPlantDetailsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct ListPlantDetailsView: View {
    @StateObject private var fertilizerViewModel = FertilizerViewModel()
    @StateObject private var diseaseViewModel = DiseaseViewModel()
    
    var plant : Plant
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
                TitleExView(title: plant.name)
                LineSeparatorExView()
                ScrollView {
                    Image(plant.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width : 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text(plant.scientificName)
                    VStack(alignment : .leading, spacing : 8) {
                        TitleExView(title: "Description :", textSize: 26, textColor: .mvDarkGreen)
                        Text(plant.description)
                        TitleExView(title: "Taille :", textSize: 26, textColor: .mvDarkGreen)
                        Text("\(String(plant.size))cm")
                        TitleExView(title: "Semis :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Mois de début de semi : \(plant.startSowingDate?.rawValue ?? "")")
                        if plant.startSowingDate == nil {
                            ErrorExView()
                        }
                        Text("Mois de fin de semi : \(plant.endSowingDate?.rawValue ?? "")")
                        if plant.startSowingDate == nil {
                            ErrorExView()
                        }
                        TitleExView(title: "Floraison :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Mois de début de floraison : \(plant.startBloomDate?.rawValue ?? "")")
                        if plant.startSowingDate == nil {
                            ErrorExView()
                        }
                        Text("Mois de fin de floraison : \(plant.endBloomDate?.rawValue ?? "")")
                        if plant.startSowingDate == nil {
                            ErrorExView()
                        }
                        TitleExView(title: "Température :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Température Minimum : \(plant.minTemperature, specifier: "%.2f")°C")
                        Text("Température Maximum : \(plant.maxTemperature, specifier: "%.2f")°C")
                        TitleExView(title: "Arrosage :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Fréquence d'arrosage : Tout les \(plant.wateringFrequency) jour(s)")
                        Text("Quantité d'arrosage : \(plant.wateringQuantity, specifier: "%.2f")L")
                        TitleExView(title: "Plantation :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Espacement entre 2 plantes : \(plant.spacing, specifier: "%.2f")cm")
                        Text("Méthode de plantation : \(plant.plantingMethod)")
                        TitleExView(title: "Récolte :", textSize: 26, textColor: .mvDarkGreen)
                        Text("Mois de début de récolte : \(plant.startHarvestDate?.rawValue ?? "")")
                        if plant.startSowingDate == nil {
                            ErrorExView()
                        }
                        Text("Mois de fin de récolte : \(plant.endHarvestDate?.rawValue ?? "")")
                        if plant.startSowingDate == nil {
                            ErrorExView()
                        }
                        TitleExView(title: "Couleur(s) :", textSize: 26, textColor: .mvDarkGreen)
                        HStack {
                            if plant.colors != nil {
                                ForEach(plant.colors!, id : \.self) { color in
                                    Spacer()
                                    ZStack {
                                        Image(systemName: "leaf.fill")
                                            .foregroundStyle(.mvWhite)
                                            .font(.system(size: 36))
                                            .offset(x : -3, y : 3)
                                        Image(systemName: "leaf.fill")
                                            .foregroundStyle(ColorConverter().colorConvertionFor(oneColor: color))
                                            .font(.system(size: 36))
                                    }
                                    Spacer()
                                }
                            } else {
                                ErrorExView()
                            }
                        }
                        TitleExView(title: "Difficulté d'entretien :", textSize: 26, textColor: .mvDarkGreen)
                        Text(plant.difficulty)
                        TitleExView(title: "Fertilisant(s) :", textSize: 26, textColor: .mvDarkGreen)
//                        if plant.fertilizers != nil {
//                            ForEach(plant.fertilizers!) { fertilizer in
//                                Text(fertilizer.name)
//                            }
//                        } else {
//                            ErrorExView()
//                        }
                        ForEach(fertilizerViewModel.fertilizers) { fertilizer in
                            Text(fertilizer.name)
                            
                        }
                        TitleExView(title: "Maladies :", textSize: 26, textColor: .mvDarkGreen)
//                        if plant.diseases != nil {
//                            ForEach(plant.diseases!) { disease in
//                                DiseaseExView(disease: disease)
//                            }
//                        } else {
//                            ErrorExView()
//                        }
                        ForEach(diseaseViewModel.diseases) { disease in
                            DiseaseExView(disease: disease)
                        }
                        TitleExView(title: "Exposition(s) :", textSize: 26, textColor: .mvDarkGreen)
                        if plant.exposures != nil {
                            ForEach(plant.exposures!, id : \.self) { exposure in
                                Text(exposure.rawValue)
                            }
                        } else {
                            ErrorExView()
                        }
                        TitleExView(title: "Sol(s) :", textSize: 26, textColor: .mvDarkGreen)
                        if plant.soils != nil {
                            ForEach(plant.soils!) { soil in
                                Text(soil.name)
                            }
                        } else {
                            ErrorExView()
                        }
                        TitleExView(title: "Intérieur ou Extérieur ?", textSize: 26, textColor: .mvDarkGreen)
                        if plant.interiorExterior != nil {
                            if plant.interiorExterior!.count >= 2 {
                                Text("Intérieur ou Extérieur")
                            } else {
                                if plant.interiorExterior![0] == .exterior {
                                    Text("Extérieur")
                                } else {
                                    Text("Intérieur")
                                }
                            }
                        } else {
                            ErrorExView()
                        }
                        TitleExView(title: "Conteneur :", textSize: 26, textColor: .mvDarkGreen)
                        if plant.containers != nil {
                            if plant.containers!.count >= 2 {
                                Text("En pot ou En terre")
                            } else {
                                if plant.containers![0] == .inGround {
                                    Text("En terre")
                                } else {
                                    Text("En pot")
                                }
                            }
                        } else {
                            ErrorExView()
                        }
                    }
                    Spacer()
                        .frame(height: 16)
                }
                .padding(.horizontal, 16)
            }
        }
        .background(BackgroundExView(opacity: 0.9))
        .onAppear {
            fertilizerViewModel.fetchFertilizers()
            diseaseViewModel.fetchDiseases()
        }
    }
}

#Preview {
    ListPlantDetailsView(plant: Plant(id: UUID().uuidString, name: "Test", scientificName: "Test", image: "MVTomato", description: "Test", size: 1, startSowingDate: .april, endSowingDate: .april, startBloomDate: .april, endBloomDate: .april, minTemperature: 1, maxTemperature: 1, wateringFrequency: 1, wateringQuantity: 1, spacing: 1, plantingMethod: "Test", startHarvestDate: .april, endHarvestDate: .april, colors: [.red, .yellow, .green, .purple], difficulty: "Facile", fertilizers: [], diseases: [], exposures: [], soils: [], interiorExterior: [.exterior], containers: [.inGround]))
}
