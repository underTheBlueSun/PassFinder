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
//            Test3()
//            ContentView()
//            MainTabView()
            MainTabView().environmentObject(PassFinderViewModel()).environment(\.colorScheme, .light)
        }
    }
}
