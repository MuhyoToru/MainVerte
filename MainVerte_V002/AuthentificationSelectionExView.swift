//
//  AuthentificationSelectionExView.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 01/08/2024.
//

import SwiftUI

struct AuthentificationSelectionExView: View {
    
    @Binding var selection: Int
    let options = ["Se connecter", "S'inscrire"]
    
    
    var body: some View {
        
        HStack(spacing: 0) {
            ForEach(options.indices, id: \.self) { index in
                Button(action: {
                    selection = index
                }) {
                    Text(options[index])
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selection == index ? Color.mvDarkGreen : Color.mvWhite)
                        .foregroundColor(selection == index ? Color.mvWhite : Color.mvDarkGreen)
                        .font(.title2)
                }
            }
        }
        .background(Color.mvWhite)
        .overlay(
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color.mvDarkGreen, lineWidth: 3)
        )
        .cornerRadius(40)
    }
}
struct AuthentificationSelectionExView_Previews: PreviewProvider {
    @State static var selection = 0
    
    static var previews: some View {
        AuthentificationSelectionExView(selection: $selection)
    }
}
