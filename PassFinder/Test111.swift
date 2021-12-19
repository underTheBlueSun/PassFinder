//
//  Test2.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/19.
//

import SwiftUI

struct Test111: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var body: some View {
        
        VStack {
            HStack {

                TextField("다른 사람 이름 입력1", text: $passFinderModel.name)
                    .frame(width: 120)
                    .textFieldStyle(.roundedBorder).font(.system(size: 13, weight: .heavy))

                Button(action: {
                    
                }) {
                    
                    Text("다른 사람으로 저장")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(Color.passFinderItem1)
                        .cornerRadius(10)
                }
                
            } // hstack
            .padding(.horizontal, 7)
            .padding(.vertical, 7)
            .background(Color.systemTeal)
            .cornerRadius(10)
            
            VStack (spacing: 0) {
                
                Text("이름을 입력하고 유형을 선택하세요").foregroundColor(.red).font(.system(size: 15))
                
                TextField("이름 입력", text: $passFinderModel.name)
                    .textFieldStyle(.roundedBorder)
                    .font(.system(size: 15, weight: .heavy)).frame(width: 130).padding(.vertical, 5)
                
            }
                    .padding()
            .padding(.horizontal, 35)
            .padding(.vertical, 10)
            .background(Color.passFinderItemBG)
            .cornerRadius(10)
            
        }
        
        
    }
}

struct Test111_Previews: PreviewProvider {
    static var previews: some View {
        Test111().environmentObject(PassFinderViewModel())
    }
}
