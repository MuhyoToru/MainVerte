//
//  BackgroundExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct BackgroundExView: View {
    
    var opacity : Double
    
    var body: some View {
        ZStack {
            Image("MVBackground_02")
                .resizable()
                .scaledToFill()
            Rectangle()
                .foregroundStyle(.mvGray.opacity(opacity))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundExView(opacity : 0.8)
}
