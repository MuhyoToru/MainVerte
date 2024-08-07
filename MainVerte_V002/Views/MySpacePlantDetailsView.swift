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
                        .frame(height: 500)
                    HStack {
                        TitleExView(title: "Couleurs :", textSize: 26, textColor: .mvDarkGreen)
                        Spacer()
                    }
                    HStack {
                        ForEach(plantation.plant.colors, id : \.self) { color in
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
                    HStack {
                        TitleExView(title: "Maladies :", textSize: 26, textColor: .mvDarkGreen)
                        Spacer()
                    }
                    ForEach(plantation.plant.diseases) { disease in
                        DiseaseExView(disease: disease)
                    }
                    HStack {
                        TitleExView(title: "Notes :", textSize: 26, textColor: .mvDarkGreen)
                        Spacer()
                    }
                    TextField("Note personnel", text: $plantation.personalNotes)
                    Spacer()
                        .frame(height: 16)
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
