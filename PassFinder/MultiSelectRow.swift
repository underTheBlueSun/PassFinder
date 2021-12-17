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

//            ZStack {
                
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
                        
                    } // zstack
                        
                    Text(title)
                        .frame(width: 280, alignment: .leading)
                        .foregroundColor(self.isSelected ? Color.passFinderItem1 : Color.white)
                        .font(.system(size: 17, weight: .heavy))
//                        .padding(.vertical, 3)

                } // hstack
//            } // Zstack
        } // Button
    }
}
