//
//  Test3.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/01.
//

import SwiftUI

struct Test3: View {
    var body: some View {
        
        
        VStack {
            Button(action: {
//                                for item in arr {
//                                    // 처음부터 0번째 까지 자르기일 경우
//                                    let endIdx: String.Index = item.index(item.startIndex, offsetBy: 0)
//                                    let result = String(item[...endIdx])
//                                    // dictionary = key:valuefdsfdsfdsfsdfsdfsdfsd
//                                    counts[result] = (counts[result] ?? 0) + 1
//                                }
                
            }, label: {
                Text("40개 더 선택하세요")
                    .frame(width: 170, height: 25)
                    .foregroundColor(Color.white)
                    .font(.system(size: 18, weight: .heavy))
                    .padding(.vertical, 5)
            })
            .background(Color.systemTeal)
            .cornerRadius(10)
            
            Button(action: {
                    print("sign up bin tapped")
            }) {
                Text("SIGN UP")
                 .frame(width: 100)
                  .font(.system(size: 18))
                  .padding()
                  .foregroundColor(.red)
             }
//              .border(Color.black, width: 2)
            .background(Color.systemTeal)
              .cornerRadius(25)
            
            
        }

        
        
        
    }
}

struct Test3_Previews: PreviewProvider {
    static var previews: some View {
        Test3()
    }
}
