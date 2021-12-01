//
//  MultiSelectRow.swift
//  PassFinder
//
//  Created by macbook on 2021/11/29.
//

import SwiftUI

struct MultiSelectRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {

            ZStack {
                
                HStack {
                    
                    ZStack {
                        Circle()
                            .stroke(self.isSelected ? Color.systemTeal : Color.gray,lineWidth: 2)
                            .frame(width: 17, height: 17)
                        
                        if self.isSelected {
                            
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.systemTeal)
                                .frame(width: 17, height: 17)
                            
                        }
                        
                    }
                    
                    
                        
                    Text(title)
                        .foregroundColor(self.isSelected ? Color.black : Color.gray)
                        .fontWeight(.bold)
    //                    .font(.title)
    //                    .foregroundColor(.purple)
                        .padding(.vertical, 5)
                        .frame(alignment: .leading)
    //                    .border(Color.purple, width: 5)
                    
                    
                

                }
            } // Zstack
        } // Button
    
    }
}