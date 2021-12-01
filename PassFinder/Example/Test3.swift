//
//  Test3.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/01.
//

import SwiftUI

struct Test3: View {
    var body: some View {
        
        VStack {
            
            Text("dsdfsdsds\nfdsdfds")
                .frame(width: 270, height: 100)
                .foregroundColor(.blue)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.yellow, lineWidth: 10))
                .navigationTitle("SwiftUI")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button("Press Me") {
                                    print("Pressed")
                                }
                            }
                        }
            
            
        }
        
        
    }
}

struct Test3_Previews: PreviewProvider {
    static var previews: some View {
        Test3()
    }
}
