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
                Circle()
                    .stroke(self.isSelected ? Color.green : Color.gray,lineWidth: 2)
                    .frame(width: 17, height: 17)
                
                if self.isSelected {
                    
                    Image(systemName: "checkmark.circle.fill")
        //                      .font(.system(size: 20))
                        .foregroundColor(Color.green)
                        .frame(width: 17, height: 17)
                }
            } // Zstack
        } // Button
    }
}
