//
//  ErrorExView.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 12/09/2024.
//

import SwiftUI

struct ErrorExView: View {
    var body: some View {
        HStack {
            Image(systemName: "exclamationmark.triangle")
            Text("Error : No Data")
        }
        .foregroundStyle(.red)
        .bold()
    }
}

#Preview {
    ErrorExView()
}
