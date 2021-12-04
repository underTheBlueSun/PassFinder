//
//  Type.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

struct Type: Identifiable {
    var id = UUID().uuidString
    var type: String
    var title: String
    var description: String
    var image: String
}

var types: [Type] = [
    Type(type: "ISTJ", title: "세상의 소금형", description: "한번 시작한 일은 끝까지 해 내는 사람", image: "category1"),
    Type(type: "ISFJ", title: "임금 뒷편의 권력형", description: "성실하고 온화하며 협조를 잘함", image: "category1"),
    Type(type: "INFJ", title: "예언자형", description: "사람과 관련된 뛰어난 통찰력을 가짐", image: "category1"),
    Type(type: "INTJ", title: "과학자형", description: "전체적인 부분을 조합하여 비전을 제시하는 사람", image: "category1"),
    Type(type: "ISTP", title: "백과사전형", description: "논리적이고 뛰어난 상황적응력을 가짐", image: "category1"),
    Type(type: "ISFP", title: "성인군자형", description: "따뜻한 감성을 가진 겸손한 사람", image: "category1"),
    Type(type: "INFP", title: "잔다르크형", description: "이상적인 세상을 만들어가는 사람", image: "category1"),
    Type(type: "INTP", title: "아이디어뱅크형", description: "비평적인 관심을 가진 뛰어난 전략가", image: "category1"),
    Type(type: "ESTP", title: "수완 좋은 활동가형", description: "친구,운동,음식등 다양함을 선호", image: "category1"),
    Type(type: "ESFP", title: "사교적인 유형", description: "분위기를 고조시키는 우호적인 사람", image: "category1"),
    Type(type: "ENFP", title: "스파크형", description: "열정적으로 새로운 관계를 만드는 사람", image: "category1"),
    Type(type: "ENTP", title: "발명가형", description: "풍부한 상상력을 가지고 새로운 것에 도전하는 사람", image: "category1"),
    Type(type: "ESTJ", title: "사업가형", description: "사무적,실용적,현실도모적인 일을 많이 하는 사람", image: "category1"),
    Type(type: "ESFJ", title: "친선도모형", description: "친절과 현실감을 바탕으로 타인에게 봉사하는 사람", image: "category1"),
    Type(type: "ENFJ", title: "언변능숙형", description: "타인의 성장을 도모하고 협동하는 사람", image: "category1"),
    Type(type: "ENTJ", title: "지도자형", description: "비전을 가지고 사람들을 활력적으로 이끄는 사람", image: "category1")
    
]
