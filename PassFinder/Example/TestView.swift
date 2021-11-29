//
//  TestView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/29.
//

import SwiftUI

struct TestView: View {
    
    @State var selections: [String] = []
    @State var isSelected: Bool
    
    var body: some View {
        
        ScrollView {
            
            ForEach(intros) { intro in
                VStack {
                    
                    Text(intro.description)
                    
                    let number1 = String(format: "%02d", intro.number1)
                    let number2 = String(format: "%02d", intro.number2)
                    
                    HStack {
                        MultiSelectRow(title: number1, isSelected: self.selections.contains(number1)) {
                            if self.selections.contains(number1) {
                                self.selections.removeAll(where: { $0 == number1 })
                            }
                            else {
                                self.selections.append(number1)
                            }
                        }
                        
                        MultiSelectRow(title: number2, isSelected: self.selections.contains(number2)) {
                            if self.selections.contains(number2) {
                                self.selections.removeAll(where: { $0 == number2 })
                            }
                            else {
                                self.selections.append(number2)
                            }
                        }
                        
                    }

                    
                }
                
            }
            
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(isSelected: false)
    }
}
