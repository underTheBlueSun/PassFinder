//
//  PassFinderApp.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

@main
struct PassFinderApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            MainTabView()
//            MainTabView().environmentObject(JsonUpload()).environmentObject(CurriculumViewModel()).environmentObject(ANPViewModel()).environmentObject(SearchViewModel())
        }
    }
}
