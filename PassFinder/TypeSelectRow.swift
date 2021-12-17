//
//  TypeSelectRow.swift
//  PassFinder
//
//  Created by macbook on 2021/11/29.
//

import SwiftUI

struct TypeSelectRow: View {
    var image: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            
            VStack(spacing: 0) {
                
                ZStack {
                    Image(image)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 50, height: 60)

                    if self.isSelected {
                        Image(systemName: "checkmark")
                            .font(.system(size: 50, weight: .heavy))
                            .foregroundColor(Color.systemTeal)
                            .opacity(0.8)
                    }
                    
                }

                Text(image).foregroundColor(.white).font(.system(size: 20, weight: .heavy))
            }

        } // Button
    }
}
