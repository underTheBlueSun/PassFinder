//
//  SetUpView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/16.
//

import SwiftUI

struct SetUpView: View {
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                
                
                ScrollView {
                    
                    VStack(alignment: .leading) {
                        Text("참고한 곳")
//                            .font(.system(size: 16, weight: .heavy))
                            .foregroundColor(.orange)
                            .padding(.vertical, 1)
                            .padding(.horizontal, 15)
                        Text("유튜브: 임작가....")
                            .foregroundColor(.white)
//                            .padding(.vertical, 10)
                            .padding(.horizontal, 15)

                        Text("아이콘: www.picker.co.rk")
                            .foregroundColor(.white)
//                            .padding(.vertical, 10)
                            .padding(.horizontal, 15)

                        
                    }
                    .frame(width: 300, height: 100, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
                    .padding()
                    
//                    ZStack {
//
//                        Rectangle()
//                            .fill(Color.black).opacity(0.4)
//                            .frame(width: 330, height: 100)
//                            .cornerRadius(15)
//
//
//                        Text("aaaa").foregroundColor(.white)
//
//                    }
                    
                    
//                    SetUpView

                    
                } // ScrollView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.passFinderBG)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
                
                
                
                
            } // NavigationView
            
            VStack {
                HStack {
                    Image(systemName: "info.circle.fill").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                    Text("정보").foregroundColor(.white).font(.system(size: 27, weight: .heavy))
                }
                
                Spacer()
                
            }
            .frame(width: 300)
            
        }
        
        
        
    }
}

struct SetUpView_Previews: PreviewProvider {
    static var previews: some View {
        SetUpView()
    }
}
