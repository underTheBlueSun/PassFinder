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
                            // 이미 체크된거 클릭할때
                            if self.selections.contains(item.type1) {
//                                self.selections.removeAll(where: { $0 == number1 })
//                                self.isSelected1 = true
//                                self.isSelected2 = false
                            }
                            // 체크 안된거 클릭할때
                            else {
                                self.selections.append(item.type1)
                                self.selections.removeAll(where: { $0 == item.type2 })
                                
//                                self.isSelected1 = true
//                                self.isSelected2 = false
                            }
                        }
                        
//                        PlayerButton2(title: number2, isSelected1: isSelected1, isSelected2: isSelected2) {
                        MultiSelectRow(title: item.title2, isSelected: self.selections.contains(item.type2)) {
                            // 이미 체크된거 클릭할때
                            if self.selections.contains(item.type2) {
//                                self.selections.removeAll(where: { $0 == number2 })
//                                self.isSelected1 = false
//                                self.isSelected2 = true
                            }
                            // 체크 안된거 클릭할때
                            else {
                                self.selections.append(item.type2)
                                self.selections.removeAll(where: { $0 == item.type1 })
//                                self.isSelected1 = false
//                                self.isSelected2 = true
                            }
                        }
                        
                        
                    }

                    
                }
                
            }
            
        }
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
