//
//  TypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/07.
//

import SwiftUI

struct TypeView: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack {
                    
                    HStack(spacing: 20) {
                        
                        VStack(spacing: 0) {
                            Image("ESFJ")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 70, height: 80)
                            
                            Text("ESFJ").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                        }
                        
                        VStack(spacing: 0) {
                            Image("ENFP")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 70, height: 80)
                            
                            Text("ENFP").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                        }
                        
                        VStack(spacing: 0) {
                            Image("INFJ")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 70, height: 80)
                            
                            Text("INFJ").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                        }
                        
                        VStack(spacing: 0) {
                            Image("ISTP")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 70, height: 80)
                            
                            Text("ISTP").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                        }
                        
                        
                        
                        
                        
                    }
                }
                
            } // ScrollView
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.passFinderBG)
            .navigationBarTitle("16 유형", displayMode: .inline)
            .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
            
        } // NavigationView
        
    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView()
    }
}
