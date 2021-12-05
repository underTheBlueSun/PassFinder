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
            
            Text("나의 유형")
//                .frame(width: 320, alignment: .leading)
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .heavy))
//                .padding()
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    VStack(spacing: 0) {
                        
                        Image("ENTJ")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 100, height: 90)
                        
        //                Text(passFinderModel.myType)
                        Text("ISTP")
                            .foregroundColor(.systemTeal)
                            .font(.system(size: 25, weight: .heavy))
                            .padding(.vertical, 1)
                        
                        Divider().frame(width:100).background(Color.gray)
                        
        //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                        Text("잔다르크형")
                            .foregroundColor(.passFinderItem1)
                            .font(.system(size: 13, weight: .heavy))
                            .padding(.vertical, 2)
                    } // vstack
                    .padding()
                    
                    ScrollView {
                        
                        Text("dsfasfasdfsdfsdafsdafsdafdsafsdfasdfsdafsdafsdfsdafdsfdsfdsfdsfdsfdfdsfds")
                    }
                    .frame(width: 180, height: 150)
                    
                } // hstack
                
                
                
                
            }
            .frame(width: 350, height: 200)
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
