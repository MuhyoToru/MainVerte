//
//  IdeasView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeasView: View {
    @State private var segmentedSelection = 0
    let tabs = ["Espaces", "Astuces", "Questions"]
    @State var researchText : String = ""

    var body: some View {
        NavigationStack {
            VStack {
                SegmentedButtonsExView(selection: $segmentedSelection, tabs: tabs)
                    .padding()
                ResearchAndFilterExView(researchText: $researchText)
                    .padding(.horizontal, 16)
                LineSeparatorExView()
                // Display corresponding view
                switch segmentedSelection {
                case 0:
                    IdeaSpacesView()
                case 1:
                    IdeaTipsView()
                case 2:
                    IdeaQuestionsView()
                default:
                    IdeaSpacesView()
                }
            }
            .background(BackgroundExView(opacity: 0.8))
        }
    }
}

#Preview {
    IdeasView()
}
