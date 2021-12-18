//
//  ContentView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            
            
            HStack(spacing: 20) {
                
                Text("민욱")
                    .frame(width: 120, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .heavy))
//                                        .padding()
                
                Text("isfp")
                    .frame(alignment: .trailing)
                    .foregroundColor(.systemTeal)
                    .font(.system(size: 35, weight: .heavy))

            } // hstack
            .padding()
            .frame(width: 250)
            .background(Color.passFinderDark).opacity(0.8)
            .cornerRadius(10)
            
            HStack(spacing: 20) {
                
                Text("민욱가가")
                    .frame(width: 120, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .heavy))
//                                        .padding()
                
                Text("isfp")
                    .frame(alignment: .trailing)
                    .foregroundColor(.systemTeal)
                    .font(.system(size: 35, weight: .heavy))

            } // hstack
            .frame(width: 250)
            .padding()
            .background(Color.passFinderDark).opacity(0.8)
            .cornerRadius(10)
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
