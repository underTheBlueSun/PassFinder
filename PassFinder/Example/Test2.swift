//
//  Test2.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/29.
//

import SwiftUI

struct Test2: View {
    @State var isToggleOn: Bool = true

        var body: some View {

            VStack {

                // isToggleOn을 Binding<Bool> 형태로 리턴하기위에
                // $를 붙여 초기화합니다.
                ChildView(isToggleOn: $isToggleOn)
                
                if isToggleOn {
                    Text("그으으을자!")
                }

            }
        }
    }

struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test2()
    }
}

struct ChildView :View{

    
    //Binding Annoation을 붙이면 Binding<Bool>을 인자로받아 초기화 시킬 수 있습니다.
    @Binding var isToggleOn:Bool

    var body: some View{

        //$가 붙으면 값을 수정가능한 Binding타입 참조합니다.
        Toggle(isOn: $isToggleOn) {
            Text("글자를 가립니다")
        }.padding()
    }
}
