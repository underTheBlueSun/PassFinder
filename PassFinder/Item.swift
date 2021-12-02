//
//  Item.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/30.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var category: String
    var type1: String
    var title1: String
    var type2: String
    var title2: String
    var image: String
}

var items: [Item] = [
    Item(category: "나의 에너지 방향은?", type1: "E1", title1: "여러 친구들과 두루두루 친하다", type2: "I1", title2: "몇 명의 친구들과 깊게 친하다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E2", title1: "낯선 곳에 심부름을 갈 수 있다", type2: "I2", title2: "낯선 곳에 심부름을 가는게 무섭다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E3", title1: "말이 많은 편이다", type2: "I3",  title2: "누가 먼저 말을 걸어야 말을 하는 편이다", image: "category1"),
    Item(category: "나의 인지 방식은?", type1: "S1", title1: "여러 친구들과 두루두루 친하다", type2: "N1", title2: "몇 명의 친구들과 깊게 친하다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S2", title1: "낯선 곳에 심부름을 갈 수 있다", type2: "N2", title2: "낯선 곳에 심부름을 가는게 무섭다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S3", title1: "말이 많은 편이다", type2: "N3",  title2: "누가 먼저 말을 걸어야 말을 하는 편이다", image: "category2"),
    Item(category: "나의 판단 방식은?", type1: "T1", title1: "여러 친구들과 두루두루 친하다", type2: "F1", title2: "몇 명의 친구들과 깊게 친하다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T2", title1: "낯선 곳에 심부름을 갈 수 있다", type2: "F2", title2: "낯선 곳에 심부름을 가는게 무섭다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T3", title1: "말이 많은 편이다", type2: "F3",  title2: "누가 먼저 말을 걸어야 말을 하는 편이다", image: "category3"),
    Item(category: "나의 생활 방식은?", type1: "J1", title1: "여러 친구들과 두루두루 친하다", type2: "P1", title2: "몇 명의 친구들과 깊게 친하다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J2", title1: "낯선 곳에 심부름을 갈 수 있다", type2: "P2", title2: "낯선 곳에 심부름을 가는게 무섭다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J3", title1: "말이 많은 편이다", type2: "P3",  title2: "누가 먼저 말을 걸어야 말을 하는 편이다", image: "category4")
    
]
