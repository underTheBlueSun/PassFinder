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
    Item(category: "나의 에너지 방향은?", type1: "E01", title1: "여러 친구들과 두루두루 친하다", type2: "I01", title2: "몇 명의 친구들과 깊게 친하다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E02", title1: "낯선 사람과 같이 있어도 괜찮다", type2: "I02", title2: "낯선 사람과 같이 있으면 부담스럽다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E03", title1: "말이 많은 편이다", type2: "I03",  title2: "누가 먼저 말을 걸어야 말을 하는 편이다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E04", title1: "생각이 바로 밖으로 표현된다", type2: "I04", title2: "혼자만의 생각에 빠질때가 종종 있다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E05", title1: "활발,적극적이라는 말을 듣는 편이다", type2: "I05", title2: "조용,차분하다는 말을 듣는 편이다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E06", title1: "내 기분을 즉시 남에게 알린다", type2: "I06",  title2: "내 기분을 마음속에만 간직한다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E07", title1: "많은 친구들에게 이야기하는게 좋다", type2: "I07", title2: "친한 친구에게만 이야기하는게 좋다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E08", title1: "여럿이 같이 하면 일이나 공부가 잘된다", type2: "I08", title2: "일이나 공부는 혼자 하는게 더 잘된다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E09", title1: "독서보다 사람 만나는게 좋다", type2: "I09",  title2: "사람 만나는 것보다 독서가 더 좋다", image: "category1"),
    Item(category: "나의 에너지 방향은?", type1: "E10", title1: "낯선 환경에서 자기소개시간이 재미있다", type2: "I10",  title2: "낯선 환경에서 자기소개시간이 불편하다", image: "category1"),
    Item(category: "나의 인지 방식은?", type1: "S01", title1: "구체적,사실적인 책이 잘 읽힌다", type2: "N01", title2: "상상속의 이야기를 다룬 책이 잘 읽힌다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S02", title1: "사람들의 외모,특징을 잘 기억한다", type2: "N02", title2: "사람들의 외모,특징을 잘 기억하지못한다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S03", title1: "꾸준하고 참을성 있다는 말을 듣는 편이다", type2: "N03",  title2: "창의적이고 독창적이란 말을 듣는 편이다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S04", title1: "한번 시작한 일은 끝을 보는 편이다", type2: "N04", title2: "중간에 그만두는 경우가 많다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S05", title1: "다양한 생활의 팁을 알려고 노력한다", type2: "N05", title2: "일상생활에 필요한 것들에 무신경하다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S06", title1: "자세한 내용을 잘 암기할 수 있다", type2: "N06",  title2: "부분보다는 전체의 틀이 잘 보인다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S07", title1: "남들이 많이 하는 방법대로 하는게 편하다", type2: "N07", title2: "나만의 방법을 찾는게 편하다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S08", title1: "현실적이고 사실적인 생각을 주로 한다", type2: "N08", title2: "비현실적인 공상을 종종 한다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S09", title1: "꼼꼼하게 계획을 세우는게 좋다", type2: "N09",  title2: "꼼꼼한 계획보단 상황에 맞게 대처한다", image: "category2"),
    Item(category: "나의 인지 방식은?", type1: "S10", title1: "반복적이고 지루해도 잘 견딘다", type2: "N10",  title2: "반복적이고 지루하면 견디기 힘들다", image: "category2"),
    Item(category: "나의 판단 방식은?", type1: "T01", title1: "카톡 1이 별로 신경 쓰이진 않는다", type2: "F01", title2: "카톡 1이 남아있으면 신경 쓰인다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T02", title1: "종종 타인의 감정에 공감하기 힘들다", type2: "F02", title2: "타인의 감정에 공감을 잘하는 편이다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T03", title1: "꼬치꼬치 따지기를 잘하는 편이다", type2: "F03",  title2: "협조적이고 순한 편이다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T04", title1: "토론할 때 사실과 진실을 더 중요시한다", type2: "F04", title2: "토론할때 사람들 반응을 더 중요시한다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T05", title1: "공평하고 정의로운 사람이 더 되고 싶다", type2: "F05", title2: "친절하고 따뜻한 사람이 더 되고 싶다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T06", title1: "위급상황에 차분하게 대처한 적 있다", type2: "F06",  title2: "위급상황에 항상 우왕좌왕한다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T07", title1: "말을 바로 내뱉는 돌직구스타일 같다", type2: "F07", title2: "상대의 기분을 고려해 말을 고르는 편이다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T08", title1: "논리적으로 설명을 잘하는 편이다", type2: "F08", title2: "이야기에 요점이 없을 때가 있다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T09", title1: "악당이 당하는 장면을 보면 통쾌하다", type2: "F09",  title2: "악당이지만 그래도 불쌍한 면이 있다", image: "category3"),
    Item(category: "나의 판단 방식은?", type1: "T10", title1: "결정을 내리는게 어렵지않다", type2: "F10",  title2: "양보를 잘하고 쉽게 결정을 내리지 못한다", image: "category3"),
    Item(category: "나의 생활 방식은?", type1: "J01", title1: "항상 공부를 먼저 하고 논다", type2: "P01", title2: "급한 경우가 아니면 놀고난후 공부한다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J02", title1: "시간을 쫓기면서 일 하는게 싫다", type2: "P02", title2: "벼락치기라도 막판에 몰아서 할 수도 있다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J03", title1: "정리정돈을 먼저 하고 공부를 시작한다", type2: "P03",  title2: "책상이 어지러워도 크게 신경안쓴다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J04", title1: "사전에 계획을 세우는 편이다", type2: "P04", title2: "계획을 짜는 것은 왠지 불편하다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J05", title1: "규칙적인 생활을 하는 편이다", type2: "P05", title2: "상황에 따라 유연하게 행동한다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J06", title1: "준비물을 잘 챙기는 편이다", type2: "P06",  title2: "준비물을 잘 잊어먹는 편이다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J07", title1: "타인의 고민을 빨리 해결해주고싶다", type2: "P07", title2: "타인의 고민에 해결보단 공감해주고싶다", image: "category4"),
    Item(category: "나의 인지 방식은?", type1: "J08", title1: "한번 시작한 일은 끝을 보는 편이다", type2: "P08", title2: "중간에 그만두는 경우가 많다", image: "category2"),
    Item(category: "나의 생활 방식은?", type1: "J09", title1: "계획적으로 일하는 편이다", type2: "P09",  title2: "그때그때 일을 해치우는 편이다", image: "category4"),
    Item(category: "나의 생활 방식은?", type1: "J10", title1: "쇼핑을 쉽게 쉽게 한다", type2: "P10",  title2: "무엇을 고를 지 결정이 어렵다", image: "category4")
    
]
