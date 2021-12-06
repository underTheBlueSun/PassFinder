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
                
                VStack(spacing:0) {
                    HStack(spacing: 20) {
                        
                        Text("엄민욱")
                            .foregroundColor(.white)
                            .font(.system(size: 50, weight: .heavy))
                            .padding(.vertical, 1)
                        
//                        Image("ESFJ")
//                            .resizable()
//                            .cornerRadius(10)
//                            .frame(width: 90, height: 90)
                        
                        VStack(spacing: 0) {
                            
                            Text("ISTP")
                                .foregroundColor(.systemTeal)
                                .font(.system(size: 40, weight: .heavy))
                                .padding(.vertical, 1)
                            
                            Divider().frame(width:110, height: 1).background(Color.white)
                            
            //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                            Text("잔다르크형")
                                .foregroundColor(.passFinderItem1)
                                .font(.system(size: 20, weight: .heavy))
                                .padding(.vertical, 2)
                            
                        } // vstack
                        
                        
                    } // hstack
                    
                    
                } // vstack
                .frame(width: 340, height: 110)
                .background(Color.passFinderDark).opacity(0.8)
                .cornerRadius(10)
                
                VStack(spacing:0) {
                    
                } // vstack
                .frame(width: 340, height: 110)
                .background(Color.passFinderDark).opacity(0.8)
                .cornerRadius(10)

                
            } // scrollview
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.passFinderBG)
            .navigationBarTitle("엄민욱", displayMode: .inline)
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
