//
//  Test2.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/29.
//

import SwiftUI

struct Test2: View {
//    @State var isToggleOn: Bool = true

        var body: some View {

//            Form {
//                Section(header: Text("").font(.system(size: 20))) {
//                    Text("여러 친구들과 두루두루 친하다").font(.system(size: 16))
//                    Text("몇 명의 친구들과 깊게 친하다").font(.system(size: 16))
//                }
//
//                Section(header: Text("").font(.system(size: 20))) {
//                    Text("여러 친구들과 두루두루 친하다").font(.system(size: 16))
//                    Text("몇 명의 친구들과 깊게 친하다").font(.system(size: 16))
//                }
//
//
//            }
            
            ZStack {
                
                Rectangle()
                    .fill(Color.gray).opacity(0.3)
                    .frame(width: 330, height: 200)
                    .cornerRadius(15)
                
                Button(action: {
//                    curriculumViewModel.deleteData()
                }, label: {
                     Text("완전삭제")
                })
                
                
            }
            
                
            
        }
    
//    Rectangle()
////        .fill(self.colorScheme == .dark ? self.darkModeStyle.backgroundColor : self.style.backgroundColor)
//        .cornerRadius(20)
//        .shadow(color: self.style.dropShadowColor, radius: self.dropShadow ? 8 : 0)
    

    
    
    }

struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test2()
    }
}

