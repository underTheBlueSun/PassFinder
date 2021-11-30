//
//  ContentView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        // Gatting ScreenSize Globally...
        GeometryReader { proxy in
            
            let size = proxy.size
            
            Home(screenSize: size, isSelected: false)
//                .preferredColorScheme(.dark)

            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
