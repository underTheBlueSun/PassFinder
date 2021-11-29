//
//  Test.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/27.
//

import SwiftUI

struct Test: View {
    @State private var favoriteColor = 0

        var body: some View {
            Picker(selection: $favoriteColor.onChange(colorChange), label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
        }

        func colorChange(_ tag: Int) {
            print("Color tag: \(tag)")
        }
}

extension Binding {
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        return Binding(
            get: { self.wrappedValue },
            set: { selection in
                self.wrappedValue = selection
                handler(selection)
        })
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}


//배열에서 요소(element)별로 카운트
//https://stackoverflow.com/questions/30545518/how-to-count-occurrences-of-an-element-in-a-swift-array
