//
//  MainTabView.swift
//  PassFinder
//
//  Created by macbook on 2021/12/01.
//

import SwiftUI

struct MainTabView: View {

    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
//    @EnvironmentObject var itemViewModel: itemViewModel
//    @EnvironmentObject private var aNPJsonUpload: ANPJsonUpload
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.tertiaryLabel
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
//        UITabBar.appearance().backgroundColor = UIColor.blue
    }
    
//    private enum Tabs {
//      case item, celeb, job, info, setup
//    }

//    @State private var selectedTab: Tabs = .item
//    @State private var selectedTab: Int = 0
    
  var body: some View {
    
      TabView(selection: $passFinderModel.selectedTab) {
        
        ItemView()
            .tag(0)
            .tabItem {
              Image(systemName: "text.badge.checkmark")
//              Text("검사")
             }
        
        MyTypeView()
          .tag(1)
          .tabItem {
              Image(systemName: "brain.head.profile")
  //            Text("나")
          }
        
        PersonView()
        .tag(2)
          .tabItem {
              Image(systemName: "person.2.fill")
//              Text("사람들")
          }
        
        SetUpView()
        .tag(3)
        .tabItem {
            Image(systemName: "16.circle.fill")
    //        Text("유형들")
        }
        
        SetUpView()
        .tag(4)
        .tabItem {
            Image(systemName: "info.circle.fill")
    //        Text("설정")
            
        }

        
//      Group {
//        item
//        celeb
//        job
//        info
//        setup
//      }
      
    }
    .accentColor(.systemTeal)
    .edgesIgnoringSafeArea(.top)
  }
}

//private extension MainTabView {
//
//    var item: some View {
//        ItemView()
//            .tag(Tabs.item)
//            .tabItem {
//              Image(systemName: "text.badge.checkmark")
////              Text("검사")
//             }
//    }
//
//  var celeb: some View {
//      ItemView()
//        .tag(Tabs.celeb)
//        .tabItem {
//            Image(systemName: "person.2.fill")
////            Text("유명인")
//        }
//
//  }
//
//    var job: some View {
//        JobView()
//        .tag(Tabs.job)
//          .tabItem {
//              Image(systemName: "briefcase.fill")
////              Text("직업")
//          }
//    }
//
//    var info: some View {
//      SetUpView()
//      .tag(Tabs.info)
//      .tabItem {
//          Image(systemName: "info.circle.fill")
//  //        Text("설정")
//      }
//
//    }
//
//  var setup: some View {
//    SetUpView()
//    .tag(Tabs.setup)
//    .tabItem {
//        Image(systemName: "gearshape.fill")
////        Text("설정")
//    }
//
//  }
//
//}

struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
        .environmentObject(PassFinderViewModel())
//        .environmentObject(JsonUpload())
    
  }
}
