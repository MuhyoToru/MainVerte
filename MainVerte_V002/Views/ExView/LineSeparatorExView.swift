//
//  LineSeparatorExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct LineSeparatorExView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 16)
            Rectangle()
                .foregroundStyle(.mvDarkGreen.opacity(0.5))
                .frame(height: 1)
            Spacer()
                .frame(height: 16)
        }
    }
}

#Preview {
    LineSeparatorExView()
}
