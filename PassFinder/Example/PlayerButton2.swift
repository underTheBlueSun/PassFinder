//
//  PlayerButton.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/29.
//

//
//  MultiSelectRow.swift
//  PassFinder
//
//  Created by macbook on 2021/11/29.
//

import SwiftUI

struct PlayerButton2: View {
    var title: String
//    @Binding var isSelected1: Bool
//    @Binding var isSelected2: Bool
    
     var isSelected1: Bool
     var isSelected2: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack(spacing: 0) {
//                Text(self.title)
//                Spacer()
                ZStack {
                    Circle()
//                        .stroke(self.isSelected ? Color.green : Color.gray,lineWidth: 2)
                        .stroke(Color.gray,lineWidth: 2)
                        .frame(width: 17, height: 17)
                    if self.isSelected2 == true {
                        Image(systemName: "checkmark.circle.fill")
//                            .font(.system(size: 20))
                            .foregroundColor(Color.green)
                            .frame(width: 17, height: 17)
                    }
                } // Zstack
            } // Hstack
        } // Button
    }
}

