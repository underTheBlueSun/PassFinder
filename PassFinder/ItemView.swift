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
        
        VStack {
//            Color.pink.ignoresSafeArea()
            ScrollView {
                
                ForEach(items) { item in
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(Color.gray).opacity(0.2)
                            .frame(width: 330, height: 100)
                            .cornerRadius(15)
                        
                        VStack(alignment:.leading) {
                            
                            MultiSelectRow(title: item.title1, isSelected: self.selections.contains(item.type1)) {
                                
                                if self.selections.contains(item.type1) {
        //                                print(selections)
                                }
                                
                                else {
                                    self.selections.append(item.type1)
                                    self.selections.removeAll(where: { $0 == item.type2 })
        //                                print(selections)
                                }
                            }
                            
                            Divider()
                                .frame(width:300)
                            
                            MultiSelectRow(title: item.title2, isSelected: self.selections.contains(item.type2)) {
                                
                                if self.selections.contains(item.type2) {
        //                                print(selections)
                                }
                                
                                else {
                                    self.selections.append(item.type2)
                                    self.selections.removeAll(where: { $0 == item.type1 })
        //                                print(selections)
                                }
                            }
                            
                        } // VStack
                        
                        
                    }
                    
                } // ForEach
                
            } // ScrollView
            
        }
        .background(.red)
        .ignoresSafeArea()
        
        
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
