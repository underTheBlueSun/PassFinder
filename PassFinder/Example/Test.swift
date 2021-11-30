//
//  Test.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/27.
//

import SwiftUI
import Foundation

struct Test: View {
    
    
    let arr = ["E1", "E2", "I3", "E4"]
    @State var counts: [String: Int] = [:]

    

        var body: some View {
            
            Button {
                
                
                for item in arr {
                    // 처음부터 0번째 까지 자르기일 경우
                    let endIdx: String.Index = item.index(item.startIndex, offsetBy: 0)
                    let result = String(item[...endIdx])
                    // dictionary = key:value
                    counts[result] = (counts[result] ?? 0) + 1
                }
                
                print(counts)  // "["E": 3, "I": 1]"
                
                    var eCnt: Int = 0
                    var iCnt: Int = 0
                    var sCnt: Int = 0
                    var nCnt: Int = 0
                    var tCnt: Int = 0
                    var fCnt: Int = 0
                    var jCnt: Int = 0
                    var pCnt: Int = 0
                
                for (key, value) in counts {
                    if key == "E" {
                        eCnt = value
                    } else if key == "I" {
                        iCnt = value
                    } else if key == "S" {
                        sCnt = value
                    } else if key == "N" {
                        nCnt = value
                    }else if key == "T" {
                        tCnt = value
                    }else if key == "F" {
                        fCnt = value
                    }else if key == "J" {
                        jCnt = value
                    }else if key == "P" {
                        pCnt = value
                    }

                }
                print(eCnt)
                print(iCnt)
                print(sCnt)
                
            } label: {
                Text("버튼")
            }
            

            
        }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

