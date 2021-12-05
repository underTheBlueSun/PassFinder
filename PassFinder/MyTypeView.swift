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
            
            VStack(spacing: 0) {
                
                HStack(spacing: 20) {
                    
                    Image("ENTJ")
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 120, height: 130)
                    
                    VStack(spacing: 0) {
                        
                        Text("ISTP")
                            .foregroundColor(.systemTeal)
                            .font(.system(size: 45, weight: .heavy))
                            .padding(.vertical, 1)
                        
                        Divider().frame(width:100).background(Color.gray)
                        
        //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                        Text("잔다르크형")
                            .foregroundColor(.passFinderItem1)
                            .font(.system(size: 20, weight: .heavy))
                            .padding(.vertical, 2)
                        
                    } // vstack
                    
                    
                } // hstack
                .padding()
                
                ScrollView {
                    
                    Text("dsfasfasdfsdfsdafsdafsdafdsafsdfasdfsdafsdafsdfsdafdsfdsfdsfdsfdsfdfdsfdsdfsdfsdfdsfdsfsdfsdfssdfsdfdsfdsfsdfdsfdsfdsfdsfsdfsdfdsfsdfsdfsdfsdfdsfsdfsdfdfghfhgf;hl;l;dfm34054305i4395-2340djvxcljewrkpwerkpeqewpripewrperperepdffjsdkf;sadkfaskf;asdfk")
                }
                .frame(width: 270, height: 120)
                
            } // vstack
            .frame(width: 350, height: 320)
            .background(.white)
            .cornerRadius(10)
            .padding()
            
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
