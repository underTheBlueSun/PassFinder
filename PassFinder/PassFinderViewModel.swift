//
//  PassFinderViewModel.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

class PassFinderViewModel: ObservableObject {
    
    @Published var selectedTab: Int = 0
    
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
