//
//  TitleExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct TitleExView: View {
    
    var title : String
    
    var textSize : CGFloat = 36
    
    var body: some View {
        Text(title)
            .font(.custom("Sumana-Regular", size: textSize))
            .foregroundStyle(.mvDarkGray)
            .frame(height: textSize * 1.8)
    }
}

#Preview {
    TitleExView(title: "Le projet Titre")
}
