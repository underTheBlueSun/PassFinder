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
//            SearchDefaultRealm()
            MainTabView().environmentObject(PassFinderViewModel()).environment(\.colorScheme, .light)
        }
    }
}
