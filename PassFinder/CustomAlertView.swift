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
            
            VStack(spacing: 25) {
                
//                Image(systemName: "text.badge.checkmark")
                
//                Text(String(passFinderModel.selections.count))
//                    .font(.title)
//                    .foregroundColor(.pink)
//                
//                Text(String(passFinderModel.counts.count))
                
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
                    
                }
                
                // 내용
                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].description)
                    .foregroundColor(.gray)
                    .padding()
                
                VStack(alignment: .trailing) {
//                    Spacer()
                    Button(action: {}) {
                        
                        Text("나로 저장")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 10)
                            .background(Color.purple)
    //                        .clipShape(Capsule())
                    }
                    .cornerRadius(10)
                    
                    HStack {
                        
                        TextField("이름입력..", text: $passFinderModel.name).font(.system(size: 15, weight: .heavy)).frame(width: 100)
    //                    Spacer()
                        Button(action: {}) {
                            
                            Text("다른 사람으로 저장")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 10)
                                .background(Color.purple)
    //                            .clipShape(Capsule())
                        }
                        .cornerRadius(10)
                        
                    }
                    
                }
                

            } // vstack
            .padding(.vertical, 25)
            .padding(.horizontal, 30)
            .background(Color.white)
            .cornerRadius(25)
            
            Button(action: {
                
                withAnimation {
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

