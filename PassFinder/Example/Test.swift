//
//  Test.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/27.
//

import SwiftUI

struct Test: View {
    
    @State private var sometoggle1 = true
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $sometoggle1) {
                Text("확인")
            }
            
            Toggle(isOn: $sometoggle1) {
                Text("확인")
            }
            
        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}


//let arr = ["FOO", "FOO", "BAR", "FOOBAR"]
//var counts: [String: Int] = [:]
//
//for item in arr {
//    counts[item] = (counts[item] ?? 0) + 1
//}
//
//print(counts)  // "[BAR: 1, FOOBAR: 1, FOO: 2]"
//
//for (key, value) in counts {
//    print("\(key) occurs \(value) time(s)")
//}
//
//BAR occurs 1 time(s)
//FOOBAR occurs 1 time(s)
//FOO occurs 2 time(s)
