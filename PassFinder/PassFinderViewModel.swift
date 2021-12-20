//
//  PassFinderViewModel.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI
import RealmSwift

class PassFinderViewModel: ObservableObject {
    
    @Published var selectedTab: Int = 0     // '나' 또는 '다른사람'으로 저장시 탭 이동
    @Published var customAlert: Bool = false       // '나' 또는 '다른사람'으로 저장시 alert 닫기
    @Published var selections: [String] = []
    @Published var counts: [String: Int] = [:]  // [E:9, I:1, ..]
    @Published var myType: String = ""          // ISFP (나, 다른사람 공통)
    @Published var name: String = ""        // 이름
    @Published var filteredArray: [Type] = []       // 나의 타입 정보의 배열
    @Published var isMe: Bool = false
    @Published var id: String = ""
    @Published var isSaveMe: Bool = false
    
    @Published var eCnt: Int = 0
    @Published var iCnt: Int = 0
    @Published var sCnt: Int = 0
    @Published var nCnt: Int = 0
    @Published var tCnt: Int = 0
    @Published var fCnt: Int = 0
    @Published var jCnt: Int = 0
    @Published var pCnt: Int = 0
    
    @Published var persons: [Person] = []
    
    @Published var title: String = ""
    @Published var description: String = ""
    @Published var image1: String = ""
    @Published var image2: String = ""
    @Published var image3: String = ""
    @Published var image4: String = ""
    @Published var image5: String = ""
    @Published var image6: String = ""
    @Published var image7: String = ""
    @Published var image8: String = ""
    @Published var image9: String = ""
    @Published var percent: String = ""
    
    func countByTypes() {
        
        counts.removeAll()
        
        for item in selections {
            // 처음부터 0번째 까지 자르기일 경우
            let endIdx: String.Index = item.index(item.startIndex, offsetBy: 0)
            let result = String(item[...endIdx])
            // dictionary = key:value
            counts[result] = (counts[result] ?? 0) + 1
        }
        
//        var eCnt: Int = 0
//        var iCnt: Int = 0
//        var sCnt: Int = 0
//        var nCnt: Int = 0
//        var tCnt: Int = 0
//        var fCnt: Int = 0
//        var jCnt: Int = 0
//        var pCnt: Int = 0
    
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
    
    func fetchMe() {
        
    guard let dbRef = try? Realm() else { return }
        
    let results = dbRef.objects(Person.self).filter("isMe == true")

    self.persons = results.compactMap({ (person) -> Person? in return person })
        
        // '나로 저장' 안하고 나를 조회하면 크랙
        if self.persons.count == 0 {
            self.isSaveMe = false
        } else {
            self.myType = self.persons[0].type
            self.eCnt = self.persons[0].eCnt
            self.iCnt = self.persons[0].iCnt
            self.sCnt = self.persons[0].sCnt
            self.nCnt = self.persons[0].nCnt
            self.tCnt = self.persons[0].tCnt
            self.fCnt = self.persons[0].fCnt
            self.jCnt = self.persons[0].jCnt
            self.pCnt = self.persons[0].pCnt
                
            self.filteredArray = types.filter { $0.type == self.myType }  // 나의 유형 객체
            self.title = self.filteredArray[0].title
            self.description = self.filteredArray[0].description
            self.image1 = self.filteredArray[0].image1
            self.image2 = self.filteredArray[0].image2
            self.image3 = self.filteredArray[0].image3
            self.image4 = self.filteredArray[0].image4
            self.image5 = self.filteredArray[0].image5
            self.image6 = self.filteredArray[0].image6
            self.image7 = self.filteredArray[0].image7
            self.image8 = self.filteredArray[0].image8
            self.image9 = self.filteredArray[0].image9
            self.percent = self.filteredArray[0].percent
            
            self.isSaveMe = true
            
        } // else

        
    }
    
    func fetchOther() {
        
        guard let dbRef = try? Realm() else { return }
        let results = dbRef.objects(Person.self).filter("isMe == false")
        self.persons = results.compactMap({ (person) -> Person? in return person })

    }
    
    
    func fetchOtherDetail() {
        
        guard let dbRef = try? Realm() else { return }
        guard let person = dbRef.objects(Person.self).filter("id == '\(self.id)'").first else { return }
//        self.persons = results.compactMap({ (person) -> Person? in return person })
        
        self.myType = person.type
        self.eCnt = person.eCnt
        self.iCnt = person.iCnt
        self.sCnt = person.sCnt
        self.nCnt = person.nCnt
        self.tCnt = person.tCnt
        self.fCnt = person.fCnt
        self.jCnt = person.jCnt
        self.pCnt = person.pCnt
            
//        self.myType = self.persons[0].type
//        self.eCnt = self.persons[0].eCnt
//        self.iCnt = self.persons[0].iCnt
//        self.sCnt = self.persons[0].sCnt
//        self.nCnt = self.persons[0].nCnt
//        self.tCnt = self.persons[0].tCnt
//        self.fCnt = self.persons[0].fCnt
//        self.jCnt = self.persons[0].jCnt
//        self.pCnt = self.persons[0].pCnt
            
        self.filteredArray = types.filter { $0.type == self.myType }  // 나의 유형 객체
        self.title = self.filteredArray[0].title
        self.description = self.filteredArray[0].description
        self.image1 = self.filteredArray[0].image1
        self.image2 = self.filteredArray[0].image2
        self.image3 = self.filteredArray[0].image3
        self.image4 = self.filteredArray[0].image4
        self.image5 = self.filteredArray[0].image5
        self.image6 = self.filteredArray[0].image6
        self.image7 = self.filteredArray[0].image7
        self.image8 = self.filteredArray[0].image8
        self.image9 = self.filteredArray[0].image9
        self.percent = self.filteredArray[0].percent

    }
    
    func fetchType() {
        filteredArray = types.filter { $0.type == self.myType }  // 나의 유형 객체
        title = filteredArray[0].title
        description = filteredArray[0].description
        image1 = filteredArray[0].image1
        image2 = filteredArray[0].image2
        image3 = filteredArray[0].image3
        image4 = filteredArray[0].image4
        image5 = filteredArray[0].image5
        image6 = filteredArray[0].image6
        image7 = filteredArray[0].image7
        image8 = filteredArray[0].image8
        image9 = filteredArray[0].image9
        
        percent = filteredArray[0].percent
    }
    
    func saveMe() {

        guard let dbRef = try? Realm() else { return }
        let results = dbRef.objects(Person.self).filter("isMe == true")
        self.persons = results.compactMap({ (person) -> Person? in return person })
        let personCnt = results.compactMap({ (person) -> Person? in return person }).count
        
        // '나로 저장' 클릭시 최초인지 이미 있는지 체크
        if personCnt == 0 {
            let person = Person()
    //        person.uuid = uuid
            person.name = self.name
            person.type = self.myType
            person.eCnt = self.eCnt
            person.iCnt = self.iCnt
            person.sCnt = self.sCnt
            person.nCnt = self.nCnt
            person.tCnt = self.tCnt
            person.fCnt = self.fCnt
            person.jCnt = self.jCnt
            person.pCnt = self.pCnt
            person.isMe = self.isMe
            
            try? dbRef.write {
                dbRef.add(person)
            }
            
        }else {
            try? dbRef.write {
            self.persons[0].name = self.name
            self.persons[0].type = self.myType
            self.persons[0].eCnt = self.eCnt
            self.persons[0].iCnt = self.iCnt
            self.persons[0].sCnt = self.sCnt
            self.persons[0].nCnt = self.nCnt
            self.persons[0].tCnt = self.tCnt
            self.persons[0].fCnt = self.fCnt
            self.persons[0].jCnt = self.jCnt
            self.persons[0].pCnt = self.pCnt
            self.persons[0].isMe = self.isMe
    
            }
            
        }
        
        self.name = ""
        self.eCnt = 0
        self.iCnt = 0
        self.sCnt = 0
        self.nCnt = 0
        self.tCnt = 0
        self.fCnt = 0
        self.jCnt = 0
        self.pCnt = 0
        
        self.isSaveMe = true
        
        
    } // saveMe
    
    func saveOther() {

        guard let dbRef = try? Realm() else { return }
        
        let person = Person()
//        person.uuid = uuid
        person.name = self.name
        person.type = self.myType
        person.eCnt = self.eCnt
        person.iCnt = self.iCnt
        person.sCnt = self.sCnt
        person.nCnt = self.nCnt
        person.tCnt = self.tCnt
        person.fCnt = self.fCnt
        person.jCnt = self.jCnt
        person.pCnt = self.pCnt
        person.isMe = false
        
        try? dbRef.write {
            dbRef.add(person)
        }
        
        self.name = ""
        self.eCnt = 0
        self.iCnt = 0
        self.sCnt = 0
        self.nCnt = 0
        self.tCnt = 0
        self.fCnt = 0
        self.jCnt = 0
        self.pCnt = 0
        
    } // saveOther
    
    func deleteData() {
        guard let dbRef = try? Realm() else { return }
        try? dbRef.write {
            
            dbRef.deleteAll()
            
//            fetchData()
        }
    }
    
}
