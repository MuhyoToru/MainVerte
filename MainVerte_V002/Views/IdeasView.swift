//
//  IdeasView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeasView: View {
    @State var researchText: String = ""
    @State private var segmentedSelection = 0
    let tabs = ["Espaces", "Astuces", "Questions", "Mes idées"]

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    SegmentedButtonsExView(selection: $segmentedSelection, tabs: tabs)
                        .padding()
                    ResearchAndFilterExView(researchText: $researchText)
                        .padding(.horizontal, 16)
                    LineSeparatorExView()
                    
                    switch segmentedSelection {
                    case 0:
                        IdeaSpacesView()
                    case 1:
                        IdeaTipsView()
                    case 2:
                        IdeaQuestionsView()
                    case 3:
                        IdeasMyPublicatonsView()
                    default:
                        IdeaSpacesView()
                    }
                }
            }
            .background(BackgroundExView(opacity: 0.9))
        }
    }
}

#Preview {
    IdeasView()
        .environmentObject(IdeaSpaceViewModel())
}
