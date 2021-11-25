//
//  Home.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct Home: View {
    
    @State var offset: CGFloat = 0
    
    var body: some View {
        
        VStack {
            
            Button {
                
            } label: {
                Image(systemName: "square.and.arrow.up.circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
//            OffsetPageTabView(offset: $offset) {
//                
//                HStack(spacing: 0) {
//                    
//                    ForEach(intros) { intro in
//                        
//                        VStack {
//                            
//                            Image(intro.image)
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
////                                .frame(height: size.height / 3)
//                        }
//                        .padding()
//                        
//                    }
//                    
//                }
//
//            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
