//
//  MainVerte_V002App.swift
//  MainVerte_V002
//
//  Created by Apprenant 141 on 01/08/2024.
//

import SwiftUI

@main

struct MainVerte_V002App: App {
    
//    @StateObject var mySpacesViewModel = MySpaceViewModel()
    @StateObject var mySpacesViewModel = MySpaceViewModel()
    @StateObject var ideaSpaceViewModel = IdeaSpaceViewModel()
    @StateObject var ideaTipViewModel = IdeaTipViewModel()
    @StateObject var ideaQuestionViewModel = IdeaQuestionViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .environmentObject(mySpacesViewModel)
        .environmentObject(mySpacesViewModel)
        .environmentObject(ideaSpaceViewModel)
        .environmentObject(ideaTipViewModel)
        .environmentObject(ideaQuestionViewModel)
    }
}
