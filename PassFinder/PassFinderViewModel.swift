//
//  PassFinderViewModel.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

class PassFinderViewModel: ObservableObject {
    
    @Published var selectedTab: Int = 0     // '나' 또는 '다른사람'으로 등록 클릭시
    @Published var selectedMine: Bool = false       // '나'로 등록 클릭시
    @Published var selections: [String] = []
    @Published var counts: [String: Int] = [:]
    @Published var myType: String = ""
    @Published var name: String = ""
    @Published var filteredArray: [Type] = []
    
    func countByTypes() {
        
        for item in selections {
            // 처음부터 0번째 까지 자르기일 경우
            let endIdx: String.Index = item.index(item.startIndex, offsetBy: 0)
            let result = String(item[...endIdx])
            // dictionary = key:valuefdsfdsfdsfsdfsdfsdfsd
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
        
        filteredArray = types.filter { $0.type == myType }
        
        
    } // func countByTypes
    
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
