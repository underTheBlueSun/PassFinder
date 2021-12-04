//
//  ItemView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/11/30.
//

import SwiftUI

struct ItemView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    @State var selections: [String] = []
    @State var category: String = "나의 에너지 방향은?"
    @State var categoryImage: String = "category1"
    
    var body: some View {
        
//        NavigationView {
//            
//            
//            
//        } // NavigationView
        
        VStack {
            
            HStack {
                Image(categoryImage).resizable().frame(width: 50, height: 50)
                
                Text(category).foregroundColor(Color.white).font(.system(size: 25, weight: .heavy))
                
            }
            
            Button(action: {
                passFinderModel.selectedTab = 1
                
            }, label: {
                
                Text("aaaa")
            })
            
            
            
            ScrollView {
                
                ForEach(items) { item in
                    
                    // 처음부터 0번째 까지 자르기일 경우
//                    let endIdx: String.Index = item.index(item.startIndex, offsetBy: 0)
//                    let result = String(item[...endIdx])
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(Color.black).opacity(0.4)
                            .frame(width: 330, height: 100)
                            .cornerRadius(15)
                        
//                        VStack {
//                            Text("1/40")
//                                .frame(width: 290, alignment: .trailing)
//                                .foregroundColor(.white)
//                                .font(.system(size: 11))
//                                .padding(.vertical, 5)
//                            Spacer()
//
//                        }
                        

                        VStack(alignment:.leading) {
                            
                            MultiSelectRow(title: item.title1, isSelected: self.selections.contains(item.type1)) {
                                // 체크 안된 라디오버튼 클릭할때
                                if !self.selections.contains(item.type1) {
                                    self.selections.append(item.type1)
                                    self.selections.removeAll(where: { $0 == item.type2 })
                                    category = item.category
                                    categoryImage = item.image
                                }
                            }
                            
                            Divider().frame(width:300).background(Color.white)

                            
                            MultiSelectRow(title: item.title2, isSelected: self.selections.contains(item.type2)) {
                                
                                if !self.selections.contains(item.type2) {
                                    self.selections.append(item.type2)
                                    self.selections.removeAll(where: { $0 == item.type1 })
                                    category = item.category
                                    categoryImage = item.image
                                }
                            }
                            
                            
                        } // VStack
                        
                        
                    } // ZStack
                    
                } // ForEach
                
                VStack {
                    // 제출하기
                    Button(action: {
                        
                        if selections.count == 40 {
                            
                            print("aaa")
                        }
                        
                    }, label: {
                        
                        Text(selections.count == 40 ? "제출하기" : String(40 - selections.count) + "개 더 선택하세요")
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
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
