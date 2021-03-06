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
    
  var body: some View {
    
      TabView(selection: $passFinderModel.selectedTab) {
        
        ItemView()
            .tag(0)
            .tabItem {
              Image(systemName: "text.badge.checkmark")
              Text("테스트")
             }
        
          MeDetailTypeView()
          .tag(1)
          .tabItem {
              Image(systemName: "brain.head.profile")
              Text("나의유형")
          }
        
        PersonView()
        .tag(2)
          .tabItem {
              Image(systemName: "person.2.fill")
              Text("다른사람")
          }
        
        TypeView()
        .tag(3)
        .tabItem {
            Image(systemName: "16.circle.fill")
            Text("16유형")
        }
        
        SetUpView()
        .tag(4)
        .tabItem {
            Image(systemName: "info.circle.fill")
            Text("정보")
            
        }
      
    }
    .accentColor(.systemTeal)
    .edgesIgnoringSafeArea(.top)
  }
}


struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
        .environmentObject(PassFinderViewModel())
//        .environmentObject(JsonUpload())
    
  }
}
