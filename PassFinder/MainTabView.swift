//
//  MainTabView.swift
//  PassFinder
//
//  Created by macbook on 2021/12/01.
//

import SwiftUI

struct MainTabView: View {

//    @EnvironmentObject var itemViewModel: itemViewModel
//    @EnvironmentObject private var aNPJsonUpload: ANPJsonUpload
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.tertiaryLabel
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
//        UITabBar.appearance().backgroundColor = UIColor.blue
    }
    
    private enum Tabs {
      case item, celeb, job, science, setup
    }

    @State private var selectedTab: Tabs = .item
    
  var body: some View {
    
    TabView(selection: $selectedTab) {
        
      Group {
        item
        celeb
        job
        setup
      }
      
    }
    .accentColor(.systemTeal)
    .edgesIgnoringSafeArea(.top)
  }
}

private extension MainTabView {
    
    var item: some View {
        ItemView()
            .tag(Tabs.item)
            .tabItem {
              Image(systemName: "text.badge.checkmark")
//              Text("검사")
             }
    }
    
  var celeb: some View {
      ItemView()
        .tag(Tabs.celeb)
        .tabItem {
            Image(systemName: "person.2.fill")
//            Text("유명인")
        }

  }
    
    var job: some View {
        JobView()
        .tag(Tabs.job)
          .tabItem {
              Image(systemName: "briefcase.fill")
//              Text("직업")
          }
    }
  
  var setup: some View {
    SetUpView()
    .tag(Tabs.setup)
    .tabItem {
        Image(systemName: "gearshape.fill")
//        Text("설정")
    }

  }
    
}

struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
//        .environmentObject(CurriculumViewModel())
//        .environmentObject(JsonUpload())
    
  }
}
