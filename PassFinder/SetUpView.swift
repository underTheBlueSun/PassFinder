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
                        Text("성격에는 좋고 나쁨이 없습니다. \n패스파인더는 재미로 간단히 해보는 간이 성격유형테스트 앱입니다.")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(width: 330, height: 100, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
//                    .padding()
                    
                    
                    
                    VStack(alignment: .leading) {
                        Text("에너지 방향").foregroundColor(.orange).frame(width: 330)

                        
                        VStack(spacing: 0) {
                            
                            HStack(spacing: 0) {
                                Text("E").foregroundColor(.red).font(.system(size: 17, weight: .heavy))
                                Text("xtraversion").foregroundColor(.white)
                            }
                            
                            Divider().frame(width:100).background(.gray)
                            Text("외향").foregroundColor(.white)

                        } // VStack
                        .frame(width: 110, height: 80)
                        .background(Color.systemTeal)
                        .cornerRadius(7)
//                        .padding()
                        
                        VStack(spacing: 0) {
                            
                            HStack(spacing: 0) {
                                Text("E").foregroundColor(.red).font(.system(size: 17, weight: .heavy))
                                Text("xtraversion").foregroundColor(.white)
                            }
                            
                            Divider().frame(width:100).background(.gray)
                            Text("외향").foregroundColor(.white)

                        } // VStack
                        .frame(width: 110, height: 80)
                        .background(Color.systemTeal)
                        .cornerRadius(7)
//                        .padding()
                        
                    }
                    .frame(width: 330, height: 200, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
                    .padding()
                    
                } // ScrollView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.passFinderBG)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
                
                
                
                
            } // NavigationView
            
            VStack {
                HStack {
                    Image(systemName: "info.circle.fill").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                    Text("성격의 경향").foregroundColor(.white).font(.system(size: 27, weight: .heavy))
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
