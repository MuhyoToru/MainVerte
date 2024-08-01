//
//  TitleExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct TitleExView: View {
    
    var title : String
    
    var body: some View {
        Text(title)
            .font(.title)
            .foregroundStyle(.mvDarkGray)
    }
}

#Preview {
    TitleExView(title: "Test")
}
