//
//  Test1.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/19.
//

import SwiftUI

struct Test1: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel


    
    var body: some View {
        VStack(spacing: 0) {
            Text("에너지방향").foregroundColor(.white).font(.system(size: 15))
            
            if 6 >= 4 {
                ZStack(alignment: .leading) {
                    Capsule()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 10)

                    Capsule()
                        .foregroundColor(.systemTeal)
                        .frame(width: CGFloat((300 * 6)) / 10, height: 10)
                } // zstack
            }else {
                ZStack(alignment: .trailing) {
                    Capsule()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 10)

                    Capsule()
                        .foregroundColor(.systemTeal)
                        .frame(width: CGFloat((300 * 4)) / 10, height: 10)
                } // zstack
            } // else
            
            HStack {
                Text("외향(" + String((6 * 100) / 10) + ")%").padding(.horizontal, 20).font(.system(size: 15))
                Spacer()
                Text("내향").padding(.horizontal, 20).font(.system(size: 15))
            }
        }
    }
}

struct Test1_Previews: PreviewProvider {
    static var previews: some View {
        Test1().environmentObject(PassFinderViewModel())
    }
}
