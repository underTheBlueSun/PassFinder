//
//  Home.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct Home: View {
    
    var screenSize: CGSize
    
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
            
            OffsetPageTabView(offset: $offset) {
                
                HStack(spacing: 0) {
                    
                    ForEach(intros) { intro in
                        
                        VStack {
                            
                            Image(intro.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: screenSize.height / 3)
                            
                            VStack(alignment: .leading, spacing: 22) {
                                Text(intro.title)
                                    .font(.largeTitle.bold())
                                Text(intro.description)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                            }
                            .foregroundStyle(.white)
                            .padding(.top, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                        // setting max width...
                        .frame(width: screenSize.width)
                    } // ForEach
                    
                } // HStack

            } // OffsetPageTabView
            
            // Animated Indicator...
            HStack(alignment: .bottom) {
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.right")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                        .padding(20)
                        .background(
                            intros[getIndex()].color,
                            in: Circle()
                        )
                }
            }
            
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
    
    // Expading index based on offset...
    func getIndex()->Int {
        
        let prograss = round(offset / screenSize.width)
        
        return Int(prograss)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
