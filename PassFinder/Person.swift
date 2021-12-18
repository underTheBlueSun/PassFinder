//
//  Person.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI
import RealmSwift

class Person: Object, Identifiable {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var type: String = ""
    @objc dynamic var eCnt: Int = 0
    @objc dynamic var iCnt: Int = 0
    @objc dynamic var sCnt: Int = 0
    @objc dynamic var nCnt: Int = 0
    @objc dynamic var tCnt: Int = 0
    @objc dynamic var fCnt: Int = 0
    @objc dynamic var jCnt: Int = 0
    @objc dynamic var pCnt: Int = 0
    @objc dynamic var isMe: Bool = false
}

//var persons: [Person] = [
//    Person(name: "나", type: "ISFJ", eCnt: 0, iCnt: 10, sCnt: 10, nCnt: 0, tCnt: 0, fCnt: 10, jCnt: 10, pCnt: 0, isMe: true),
//    Person(name: "엄민욱", type: "ISFJ", eCnt: 0, iCnt: 10, sCnt: 10, nCnt: 0, tCnt: 0, fCnt: 10, jCnt: 10, pCnt: 0, isMe: false),
//
//]

