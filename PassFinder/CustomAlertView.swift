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
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing: 30) {
                
                VStack(spacing: 3)  {
                    
                    // 타입
                    Text(String(passFinderModel.myType))
                        .foregroundColor(.systemTeal)
                        .font(.system(size: 30, weight: .heavy))
                    
                    Divider().frame(width:150).background(Color.gray)
                    
                    // 타이틀
                    Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                        .foregroundColor(.passFinderItem1)
                        .font(.system(size: 18, weight: .heavy))
                    
                } // vstack
                
                // 내용
                ScrollView {
                    Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].description)
                        .foregroundColor(.gray)
                        .padding()
                        
                }
                .frame(width: 300, height: 200)
                
                
                VStack(alignment: .trailing) {
//                    Spacer()
                    Button(action: {
                        
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
    //                        .clipShape(Capsule())
                    }
                    .cornerRadius(10)
                    
                    HStack {
                        
                        
                        TextField("이름입력..", text: $passFinderModel.name).font(.system(size: 15, weight: .heavy)).frame(width: 100)
    //                    Spacer()
                        Button(action: {
                            
                            passFinderModel.selectedTab = 1
                            passFinderModel.selections.removeAll()
                            passFinderModel.customAlert = false
                            
                        }) {
                            
                            Text("다른 사람으로 저장")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 7)
                                .padding(.horizontal, 10)
                                .background(Color.passFinderItem1)
    //                            .clipShape(Capsule())
                        }
                        .cornerRadius(10)
                        
                    } // hstack
                    
                } // vstack

            } // vstack
            .padding(.vertical, 25)
            .padding(.horizontal, 30)
            .background(Color.white)
            .cornerRadius(25)
            
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
                
            }
            .padding()
            
        } // zstack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.7))
        
    }
}

