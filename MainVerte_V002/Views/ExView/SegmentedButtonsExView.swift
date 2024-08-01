//
//  SegmentedButtonsExView.swift
//  MainVerte
//
//  Created by Apprenant 166 on 31/07/2024.
//

import SwiftUI

struct SegmentedButtonsExView: View {
    @Binding var selection: Int
    let tabs: [String]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(Array(tabs.enumerated()), id: \.offset) { index, tab in
                Button(action: {
                    selection = index
                }) {
                    Text(tab)
                        .font(selection == index ? .system(size: 15, weight: .semibold) : .system(size: 14))
                        .frame(maxWidth: .infinity, minHeight: 25)
                        .background(selection == index ? Color.white : Color.clear)
                        .foregroundColor(.mvDarkGray)
                        .cornerRadius(6)
                }
                .padding(.horizontal, 10)
                .background(Color.mvLightBlue)
                if index < tabs.count - 1 {
                    Rectangle()
                        .fill(Color.mvDarkGray)
                        .frame(width: 1, height: 12)
                }
            }
        }
        .frame(height: 36)
        .background(Color.mvLightBlue)
        .cornerRadius(10)
//        .padding()
    }
}

#Preview {
    SegmentedButtonsExView(selection: .constant(2), tabs: ["test", "test"])
}
