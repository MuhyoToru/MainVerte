//
//  ResearchBarExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct ResearchBarExView: View {
    
    @Binding var researchText : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.white)
                .frame(height: 36)
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Recherche", text: $researchText)
                Image(systemName: "mic.fill")
            }
            .foregroundStyle(.mvMediumGray)
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ResearchBarExView(researchText: .constant(""))
}
