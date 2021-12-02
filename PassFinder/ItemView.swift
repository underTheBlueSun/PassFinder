//
//  ItemView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/30.
//

import SwiftUI

struct ItemView: View {
    @State var selections: [String] = []
    
    var body: some View {
        
//        NavigationView {
//            
//            
//            
//        } // NavigationView
        
        VStack {
            
            Text("나의 에너지 방향은").foregroundColor(Color.white).font(.system(size: 25, weight: .heavy))
            
            
            ScrollView {
                
                ForEach(items) { item in
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(Color.black).opacity(0.4)
                            .frame(width: 330, height: 100)
                            .cornerRadius(15)
                        
                        VStack(alignment:.leading) {
                            
                            MultiSelectRow(title: item.title1, isSelected: self.selections.contains(item.type1)) {
                                
                                if !self.selections.contains(item.type1) {
                                    self.selections.append(item.type1)
                                    self.selections.removeAll(where: { $0 == item.type2 })
                                }
                            }
                            
                            Divider().frame(width:300)

                            
                            MultiSelectRow(title: item.title2, isSelected: self.selections.contains(item.type2)) {
                                
                                if !self.selections.contains(item.type2) {
                                    self.selections.append(item.type2)
                                    self.selections.removeAll(where: { $0 == item.type1 })
                                }
                            }
                            
                        } // VStack
                        
                    } // ZStack
                    
                    
                } // ForEach
                
            } // ScrollView

            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.passFinderBG)
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
