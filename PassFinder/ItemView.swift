//
//  ItemView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/30.
//

import SwiftUI

struct ItemView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
//    @State var selections: [String] = []
    @State var category: String = "나의 에너지 방향은?"
    @State var categoryImage: String = "category1"
    
    @State var customAlert = false
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    Image(categoryImage).resizable().frame(width: 50, height: 50)
                    
                    Text(category).foregroundColor(Color.white).font(.system(size: 25, weight: .heavy))
                    
                }
                
                ScrollView {
                    
                    ForEach(items) { item in
                                            
                        ZStack {
                            
                            Rectangle()
                                .fill(Color.black).opacity(0.4)
                                .frame(width: 330, height: 100)
                                .cornerRadius(15)
                            
                            VStack(alignment:.leading) {
                                
                                MultiSelectRow(title: item.title1, isSelected: passFinderModel.selections.contains(item.type1)) {
                                    // 체크 안된 라디오버튼 클릭할때
                                    if !passFinderModel.selections.contains(item.type1) {
                                        passFinderModel.selections.append(item.type1)
                                        passFinderModel.selections.removeAll(where: { $0 == item.type2 })
                                        category = item.category
                                        categoryImage = item.image
                                    }
                                }
                                
                                Divider().frame(width:300).background(Color.white)

                                
                                MultiSelectRow(title: item.title2, isSelected: passFinderModel.selections.contains(item.type2)) {
                                    
                                    if !passFinderModel.selections.contains(item.type2) {
                                        passFinderModel.selections.append(item.type2)
                                        passFinderModel.selections.removeAll(where: { $0 == item.type1 })
                                        category = item.category
                                        categoryImage = item.image
                                    }
                                }
                                
                                
                            } // VStack
                            
                            
                            
                        } // ZStack
                        .edgesIgnoringSafeArea(.all)
                        
                    } // ForEach
                    
                    VStack {
                        // 제출하기
                        Button(action: {
                            
                            if passFinderModel.selections.count == 40 {
                                
                                passFinderModel.countByTypes()
                                customAlert.toggle()

                            }
                            
                        }, label: {
                            
                            Text(passFinderModel.selections.count == 40 ? "제출하기" : String(40 - passFinderModel.selections.count) + "개 더 선택하세요")
                                .frame(width: 170, height: 25)
                                .foregroundColor(Color.white)
                                .font(.system(size: 18, weight: .heavy))
                                .padding(.vertical, 5)
                        })
                        .background(Color.systemTeal)
                        .cornerRadius(10)
                        
                    }
                    
                } // ScrollView

                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color.passFinderBG)
            
            if customAlert {
                
                CustomAlertView(show: $customAlert)
            }
            
        }
        

        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
