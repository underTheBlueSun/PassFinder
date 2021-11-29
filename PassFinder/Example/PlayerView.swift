//
//  PlayerView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/29.
//

import SwiftUI

struct PlayerView: View {
    @State var selections: [String] = []
    @State var isSelected1: Bool = false
    @State var isSelected2: Bool = false
    
    var body: some View {
        
        ScrollView {
            
            ForEach(intros) { intro in
                VStack {
                    
                    let number1 = String(format: "%02d", intro.number1)
                    let number2 = String(format: "%02d", intro.number2)
                    
                    HStack {
                        PlayerButton1(title: number1, isSelected1: $isSelected1, isSelected2: $isSelected2) {
                            if self.selections.contains(number1) {
                                self.selections.removeAll(where: { $0 == number1 })
                                self.isSelected1 = true
                                self.isSelected2 = false
                            }
                            else {
                                self.selections.append(number1)
                                self.isSelected1 = true
                                self.isSelected2 = false
                            }
                        }
                        
                        PlayerButton2(title: number2, isSelected1: $isSelected1, isSelected2: $isSelected2) {
                            if self.selections.contains(number2) {
                                self.selections.removeAll(where: { $0 == number2 })
                                self.isSelected1 = false
                                self.isSelected2 = true
                            }
                            else {
                                self.selections.append(number2)
                                self.isSelected1 = false
                                self.isSelected2 = true
                            }
                        }
                        
                    }

                    
                }
                
            }
            
        }
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}


