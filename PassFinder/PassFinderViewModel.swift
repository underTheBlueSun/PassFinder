//
//  PassFinderViewModel.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

class PassFinderViewModel: ObservableObject {
    
    @Published var selectedTab: Int = 0     // '나' 또는 '다른사람'으로 저장시 탭 이동
    @Published var customAlert: Bool = false       // '나' 또는 '다른사람'으로 저장시 alert 닫기
    @Published var selections: [String] = []
    @Published var counts: [String: Int] = [:]  // [E:9, I:1, ..]
    @Published var myType: String = ""          // ISFP
    @Published var othername: String = ""        // 다른 사람 이름
    @Published var filteredArray: [Type] = []       // 나의 타입 정보의 배열
    
    func countByTypes() {
        
        counts.removeAll()
        
        for item in selections {
            // 처음부터 0번째 까지 자르기일 경우
            let endIdx: String.Index = item.index(item.startIndex, offsetBy: 0)
            let result = String(item[...endIdx])
            // dictionary = key:value
            counts[result] = (counts[result] ?? 0) + 1
        }
        
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

        } // for
        
        if eCnt > iCnt {
            myType = "E"
        }else {
            myType = "I"
        }
        
        if sCnt >= nCnt {
            myType = myType + "S"
        }else {
            myType = myType + "N"
        }
        
        if tCnt > fCnt {
            myType = myType + "T"
        }else {
            myType = myType + "F"
        }
        
        if jCnt >= pCnt {
            myType = myType + "J"
        }else {
            myType = myType + "P"
        }
        
        filteredArray = types.filter { $0.type == myType }  // 나의 유형 객체
        
    } // func countByTypes
    
    func saveData() {
        
        
    }
    
//    @Published var grade = UserDefaults.standard.string(forKey: "Grade") ?? ""
//    @Published var semester = UserDefaults.standard.string(forKey: "Semester") ?? ""
//    @Published var koreans: [Curriculum03] = []
//    @Published var maths: [Curriculum03] = []
//    @Published var societys: [Curriculum03] = []
//    @Published var sciences: [Curriculum03] = []
    
//    init() {
//
//        fetchKorData()
//    }

//    func fetchKorData() {
//        guard let dbRef = try? Realm() else { return }
//        let results = dbRef.objects(Curriculum03.self).filter("grade == '\(grade)' and semester == '\(semester)' and subject == '국어'")
//        self.koreans = results.compactMap({ (korean) -> Curriculum03? in return korean })
//    }
//
//    func deleteData() {
//        guard let dbRef = try? Realm() else { return }
//        try? dbRef.write {
//            dbRef.deleteAll()
//            fetchKorData()
//            fetchMathData()
//            fetchSocietyData()
//            fetchScienceData()
//        }
//    }
      
}
