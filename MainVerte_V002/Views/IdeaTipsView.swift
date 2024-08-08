//
//  IdeaTipsView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaTipsView: View {
    @EnvironmentObject var ideaTipViewModel: IdeaTipViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(groupedIdeaTips.keys.sorted(), id: \.self) { category in
                        if let ideas = groupedIdeaTips[category] {
                            NavigationLink(destination: IdeaListTipsView(category: category).environmentObject(ideaTipViewModel)) {
                                ComposedImagesExView(
                                    leftImage: ideas[safe: 0]?.images ?? "",
                                    topImage: ideas[safe: 1]?.images ?? "",
                                    bottomImage: ideas[safe: 2]?.images ?? "",
                                    rightImage: ideas[safe: 3]?.images ?? "",
                                    title: category,
                                    subtitle: "\(ideas.count) Idées"
                                )
                            }
                        }
                    }
                }
            }
            HStack {
                Spacer()
                NavigationLink(destination: CreateIdeaView()) {
                    ActionButtonExView(action: "plus")
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
    
    // Group ideas by subCategory
    private var groupedIdeaTips: [String: [IdeaTip]] {
        Dictionary(grouping: ideaTipViewModel.ideaTips, by: { $0.subCategory })
    }
}

#Preview {
    IdeaTipsView()
        .environmentObject(IdeaTipViewModel())
}
