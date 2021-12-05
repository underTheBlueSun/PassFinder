//
//  Person.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID().uuidString
    var name: String
    var type: String
    var eCnt: Int
    var iCnt: Int
    var sCnt: Int
    var nCnt: Int
    var tCnt: Int
    var fCnt: Int
    var jCnt: Int
    var pCnt: Int
    var isMe: Bool
}

var persons: [Person] = [
    Person(name: "나", type: "ISFJ", eCnt: 0, iCnt: 10, sCnt: 10, nCnt: 0, tCnt: 0, fCnt: 10, jCnt: 10, pCnt: 0, isMe: true),
    Person(name: "엄민욱", type: "ISFJ", eCnt: 0, iCnt: 10, sCnt: 10, nCnt: 0, tCnt: 0, fCnt: 10, jCnt: 10, pCnt: 0, isMe: false),
    
]
