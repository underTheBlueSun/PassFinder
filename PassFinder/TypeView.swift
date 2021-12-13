//
//  TypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/07.
//

import SwiftUI

struct TypeView: View {
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 4)
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                ScrollView {
                    
                    LazyVGrid(columns: columns, spacing: 30) {
                        
                        ForEach(types) { type in
                            
                            NavigationLink(destination: DetailTypeView(type: type.image1)) {
                                VStack(spacing: 0) {
                                    Image(type.image1)
                                        .resizable()
                                        .cornerRadius(10)
                                        .frame(width: 70, height: 80)

                                    Text(type.image1).foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                                }
                                .padding(.vertical, 5)
                            }
                            
                        }
                        
                    } // LazyVGrid

                    
                } // ScrollView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.passFinderBG)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
                
                
                
                
            } // NavigationView
            
            VStack {
                HStack {
                    Image(systemName: "16.circle.fill").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                    Text("유형").foregroundColor(.white).font(.system(size: 27, weight: .heavy))
                }
                
                Spacer()
                
            }
            .frame(width: 300)
            
        }
        
        
        
    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView()
    }
}
