//
//  ContentView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment:.leading) {
            HStack {
                
                ZStack {
                    Circle()
                        .stroke(Color.gray,lineWidth: 2)
                        .frame(width: 17, height: 17)
                    
                   
                } // zstack
                    
                Text("먼저 전화해서 안부를 묻거나 약속을 잡지않는다")
                    .frame(width: 280, alignment: .leading)
    //                .foregroundColor(self.isSelected ? Color.passFinderItem1 : Color.white)
                    .font(.system(size: 17, weight: .heavy))
    //                        .padding(.vertical, 3)

            } // hstack
    //            } // Zstack
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
