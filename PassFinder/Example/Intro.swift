//
//  Intro.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct Intro: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var description: String
    var color: Color
    var number1: Int
    var number2: Int
}

var intros: [Intro] = [
    Intro(image:"food2", title: "Choose your favourite menu", description: "But they are not the  inconvenience that our pleasure", color: Color.blue, number1: 1, number2: 2),
    Intro(image:"food1", title: "Find the best price", description: "There is no provision to smooth the consequences are.", color: Color.yellow, number1: 3, number2: 4),
    Intro(image:"food3", title: "Your food is ready to be delivered", description: "ter than the pain of the soul to the task", color: Color.pink, number1: 5, number2: 6)
]
