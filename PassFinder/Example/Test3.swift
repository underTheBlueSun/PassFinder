//
//  Test3.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/01.
//

import SwiftUI

struct Test3: View {
    
    @State var aaa:Bool = false
    
    var body: some View {
        
        
        VStack(spacing: 2) {
            Text("aaaaa")
            
            Divider().frame(width:200).background(Color.gray)
            
            Text("bbbbb")
            
            
            
        }

        
        
        
    }
}

struct Test3_Previews: PreviewProvider {
    static var previews: some View {
        Test3()
    }
}
