//
//  IdeaSpacesView.swift
//  MainVerte
//
//  Created by Pierre on 16/07/2024.
//

import SwiftUI

struct IdeaSpacesView: View {
    @EnvironmentObject var ideaSpaceViewModel: IdeaSpaceViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(groupedIdeaSpaces.keys.sorted(), id: \.self) { category in
                        if let ideas = groupedIdeaSpaces[category] {
                            NavigationLink(destination: IdeaListSpacesView(category: category).environmentObject(ideaSpaceViewModel)) {
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
    private var groupedIdeaSpaces: [String: [IdeaSpace]] {
        Dictionary(grouping: ideaSpaceViewModel.ideaSpaces, by: { $0.subCategory })
    }
}

#Preview {
    IdeaSpacesView()
        .environmentObject(IdeaSpaceViewModel())
}
