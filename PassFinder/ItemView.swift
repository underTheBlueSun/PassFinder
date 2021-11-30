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
        
        ScrollView {
            
            ForEach(items) { item in
                VStack {

                    HStack {
                        
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
                        
                    }

                }
                
            } // ForEach
            
        }
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
