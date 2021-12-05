//
//  MyTypeView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/05.
//

import SwiftUI

struct MyTypeView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                HStack {
                    
                    
                }
                
                
                
                Text("나의 타입은")
                    .foregroundColor(.gray)
                    .padding(.vertical, 1)
                
//                Text(passFinderModel.myType)
                Text("ISTP")
                    .foregroundColor(.systemTeal)
                    .font(.system(size: 30, weight: .heavy))
                    .padding(.vertical, 1)
                
                Divider().frame(width:100).background(Color.gray)
                
//                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                Text("잔다르크형")
                    .foregroundColor(.passFinderItem1)
                    .font(.system(size: 18, weight: .heavy))
                
            }
            .frame(width: 300, height: 200)
            .background(.white)
            .cornerRadius(10)
            
            Spacer()
            
            
                
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .edgesIgnoringSafeArea(.all)
        .background(Color.passFinderBG)
        
    }
}

struct MyTypeView_Previews: PreviewProvider {
    static var previews: some View {
        MyTypeView().environmentObject(PassFinderViewModel())
    }
}
