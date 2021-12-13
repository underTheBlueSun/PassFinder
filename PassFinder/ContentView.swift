//
//  ContentView.swift
//  PassFinder
//
//  Created by macbook on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        HStack(alignment: .top) {
            VStack {
                Image("빌리빈(머니볼)")
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 60, height: 70)
                Text("머니볼-빌리빈").foregroundColor(.black).font(.system(size: 12)).frame(width: 70)
            }
            
            VStack {
                Image("마틴루터킹")
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 60, height: 70)
                Text("마틴루터킹").foregroundColor(.black).font(.system(size: 12)).frame(width: 70)
            }
            
            VStack {
                Image("잭(캐리비안의해적)")
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 60, height: 70)
                Text("캐리비안의해적-잭스패로우").foregroundColor(.black).font(.system(size: 12)).frame(width: 70)
            }
            
            VStack {
                Image("키팅(죽은시인의사회)")
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 60, height: 70)
                Text("죽은시인의사회-키팅").foregroundColor(.black).font(.system(size: 12)).frame(width: 70)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
