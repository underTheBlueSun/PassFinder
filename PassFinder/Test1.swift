//
//  Test1.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/19.
//

import SwiftUI

struct Test1: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var body: some View {
        VStack {
            
            VStack(spacing: 30) {
                
                HStack(spacing: 0) {
                    Spacer()
                    // 창 닫기
                    Button(action: {

                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.gray).opacity(0.5)
                        
                    }
                    
                } // hstack
                .frame(width: 270)
                
                VStack(spacing: 0)  {
                    
                    // 유형 이미지
                    Image("ISFP")
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 70, height: 80)
                    
                    // 타입
                    Text(String("ISFP"))
                        .foregroundColor(.systemTeal)
                        .font(.system(size: 30, weight: .heavy))
                    
                    Divider().frame(width:150).background(Color.gray)
                    
                    // 타이틀
                    Text("책임감 있고 묵묵히 자기일을 수행하는 온화한 성품의 소유자")
                        .frame(width: 220)
                        .foregroundColor(.passFinderItem1)
                        .font(.system(size: 18, weight: .heavy))
                    
                } // vstack
                
                VStack(alignment: .trailing) {
//                    Spacer()
                    Button(action: {
//                        passFinderModel.name = "나"
//                        passFinderModel.isMe = true
//                        passFinderModel.saveMe()
//                        passFinderModel.selectedTab = 1
//                        passFinderModel.selections.removeAll()
//                        passFinderModel.customAlert = false
                        
                    }) {
                        
                        Text("나로 저장")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical, 7)
                            .padding(.horizontal, 10)
                            .background(Color.orange)
                        
                        
                    }
                    .cornerRadius(10)
                    
                    HStack {

                        TextField("다른 사람 이름 입력", text: $passFinderModel.name)
                            .frame(width: 120)
                            .textFieldStyle(.roundedBorder).font(.system(size: 13, weight: .heavy))
//                            .padding(.horizontal, 7)
//                            .padding(.vertical, 7)
    //                    Spacer()
                        Button(action: {
                            
//                            if passFinderModel.name != "" {
//                                passFinderModel.isMe = false
//                                passFinderModel.saveOther()
//                                passFinderModel.selectedTab = 2
//                                passFinderModel.selections.removeAll()
//                                passFinderModel.customAlert = false
//                                
//                            }
                            
                            
                        }) {
                            
                            Text("다른 사람으로 저장")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 7)
                                .padding(.horizontal, 10)
                                .background(Color.passFinderItem1)
//                                .padding(.horizontal, 7)
//                                .padding(.vertical, 7)
                                .cornerRadius(10)
                        }
//                        .cornerRadius(10)
                        
                    } // hstack
                    .padding(.horizontal, 7)
                    .padding(.vertical, 7)
                    .background(Color.systemTeal)
                    .cornerRadius(10)
                    
                    
                } // vstack

            } // vstack
            .padding(.vertical, 25)
            .padding(.horizontal, 30)
            .background(Color.white)
            .cornerRadius(25)
            
            
            
        } // zstack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.7))
    }
}

struct Test1_Previews: PreviewProvider {
    static var previews: some View {
        Test1().environmentObject(PassFinderViewModel())
    }
}
