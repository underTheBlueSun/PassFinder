//
//  CustomAlertView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

struct CustomAlertView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    @Binding var show: Bool
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 30) {
                
                HStack {
//                    Spacer()
                    // 창 닫기
                    Button(action: {
                        
                        withAnimation {
                            passFinderModel.name = ""
                            show.toggle()
                        }
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.gray).opacity(0.5)
                        
                    } // Hstack
                    .frame(width: 300, alignment: .trailing)
                    
                }
                
                VStack(spacing: 0)  {
                    
                    // 유형 이미지
                    Image(passFinderModel.filteredArray[0].image1)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 70, height: 80)
                    
                    // 타입
                    Text(String(passFinderModel.myType))
                        .foregroundColor(.systemTeal)
                        .font(.system(size: 30, weight: .heavy))
                    
                    Divider().frame(width:150).background(Color.gray)
                    
                    // 타이틀
                    Text(passFinderModel.filteredArray[0].title)
                        .frame(width: 220)
                        .foregroundColor(.passFinderItem1)
                        .font(.system(size: 18, weight: .heavy))
                    
                } // vstack
                
                VStack(alignment: .trailing) {
                    Button(action: {
                        passFinderModel.name = "나"
                        passFinderModel.isMe = true
                        passFinderModel.saveMe()
                        passFinderModel.selectedTab = 1
                        passFinderModel.selections.removeAll()
                        passFinderModel.customAlert = false
                        
                    }) {
                        
                        Text("나로 저장")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical, 7)
                            .padding(.horizontal, 10)
                            .background(Color.passFinderItem1)
                    }
                    .cornerRadius(10)
                    
                    HStack {
                        
                        TextField("다른 사람 이름 입력", text: $passFinderModel.name)
                            .frame(width: 120)
                            .textFieldStyle(.roundedBorder).font(.system(size: 13, weight: .heavy))

                        Button(action: {
                            
                            if passFinderModel.name != "" {
                                passFinderModel.isMe = false
                                passFinderModel.saveOther()
                                passFinderModel.selectedTab = 2
                                passFinderModel.selections.removeAll()
                                passFinderModel.customAlert = false
                                
                            }
                            
                            
                        }) {
                            
                            Text("다른 사람으로 저장")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 7)
                                .background(Color.passFinderItem1)
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
            
        } // Vstack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.7))
        
    }
}

