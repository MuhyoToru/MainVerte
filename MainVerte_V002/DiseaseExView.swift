//
//  DiseaseExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 05/08/2024.
//

import SwiftUI

struct DiseaseExView: View {
    
    var disease : Disease
    
    var body: some View {
        HStack {
            VStack {
                Image(disease.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width : 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text(disease.name)
                    .bold()
                Spacer()
            }
            VStack(alignment : .leading) {
                Text("Description : " + disease.description)
                Text("")
                Text("Méthode de soin : " + disease.cureMethod)
            }
        }
    }
}

#Preview {
    DiseaseExView(disease: Disease(name: "Mildiou", image: "MVMildew", description: "Test", cureMethod: "Test"))
}
