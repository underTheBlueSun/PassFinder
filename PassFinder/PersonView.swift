//
//  PersonView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/06.
//

import SwiftUI

struct PersonView: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                NavigationLink(destination: Text("aaaa")) {
                    
                    VStack(spacing:0) {
                        HStack(spacing: 20) {
                            
                            Text("엄민욱")
                                .foregroundColor(.white)
                                .font(.system(size: 40, weight: .heavy))
                                .padding()

                            VStack(spacing: 0) {
                                
                                Text("ISTP")
                                    .foregroundColor(.systemTeal)
                                    .font(.system(size: 30, weight: .heavy))
                                    .padding(.vertical, 1)
                                
                                Divider().frame(width:110, height: 1).background(Color.white)
                                
                                Text("잔다르크형")
                                    .foregroundColor(.passFinderItem1)
                                    .font(.system(size: 18, weight: .heavy))
                                    .padding(.vertical, 2)
                                
                            } // vstack
                            .padding()
                            
                        } // hstack
                        
                    } // vstack
                    .frame(width: 340, height: 80)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
                    
                } // NavigationLink
                
                NavigationLink(destination: Text("aaaa")) {
                    
                    VStack(spacing:0) {
                        HStack(spacing: 20) {
                            
                            Text("엄민욱")
                                .foregroundColor(.white)
                                .font(.system(size: 40, weight: .heavy))
                                .padding()

                            VStack(spacing: 0) {
                                
                                Text("ISTP")
                                    .foregroundColor(.systemTeal)
                                    .font(.system(size: 30, weight: .heavy))
                                    .padding(.vertical, 1)
                                
                                Divider().frame(width:110, height: 1).background(Color.white)
                                
                                Text("잔다르크형")
                                    .foregroundColor(.passFinderItem1)
                                    .font(.system(size: 18, weight: .heavy))
                                    .padding(.vertical, 2)
                                
                            } // vstack
                            .padding()
                            
                        } // hstack
                        
                    } // vstack
                    .frame(width: 340, height: 80)
                    .background(Color.passFinderDark).opacity(0.8)
                    .cornerRadius(10)
                    
                } // NavigationLink

            } // scrollview
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.passFinderBG)
            .navigationBarTitle("다른 사람 유형", displayMode: .inline)
            .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
//                        studentViewModelData.openNewPage.toggle()
                    }, label: {
                        Image(systemName: "plus.circle.fill").font(.title2).foregroundColor(.white)
                    })
                }
            } // toolbar
            
        } // NavigationView
        
        
        
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
