//
//  AddPersonView.swift
//  PassFinder
//
//  Created by macbook on 2021/12/17.
//

import SwiftUI

struct AddPersonView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    @Environment(\.presentationMode) var presentaion
    @State var isSelected: Bool = false
    @State var typeSelections: [String] = []
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 4)
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {
                    passFinderModel.name = ""
//                        passFinderModel.fetchOther()
                    presentaion.wrappedValue.dismiss()
                }, label: {
                    Text("취소").font(.system(size: 25, weight: .heavy)).foregroundColor(.orange)
                })
                .frame(width: 50, alignment: .trailing)
                
                Spacer()
                
                if typeSelections.count == 1 && passFinderModel.name != "" {
                Button(action: {
                    passFinderModel.myType = typeSelections[0]
//                    passFinderModel.saveOther()
                    passFinderModel.saveOtherDirect()
//                    passFinderModel.fetchOther()
                    presentaion.wrappedValue.dismiss()
                }, label: {
                    Text("저장").font(.system(size: 25, weight: .heavy)).foregroundColor(.orange)
                })
                .frame(width: 250, alignment: .trailing)
                
                }
                
            } // hstack
            .padding(.horizontal, 20)
            
            // 키보드가 가려서 scroll 함
            ScrollView {
                
                VStack (spacing: 0) {
                    
                    Text("이름을 입력하고 유형을 선택하세요").foregroundColor(.white).font(.system(size: 15)).padding(.vertical,5)
                    
                    TextField("이름 입력", text: $passFinderModel.name)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 15, weight: .heavy)).frame(width: 130).padding(.vertical, 5)
                    
                }
//                .padding()
                .padding(.horizontal, 35)
                .padding(.vertical, 10)
                .background(Color.passFinderItemBG)
                .cornerRadius(10)
                 
                
                
                LazyVGrid(columns: columns, spacing: 10) {
                    
                    ForEach(types) { type in
                        TypeSelectRow(image: type.image1, isSelected: typeSelections.contains(type.image1)) {
                            // 체크 안된 라디오버튼 클릭할때
                            if !typeSelections.contains(type.image1) {
                                typeSelections.removeAll()
                                typeSelections.append(type.image1)
                            }
                            
                        }
                        
                    } // foreach
                    
                } // LazyVGrid
                .padding()
                
                Spacer()
                
            } // scrollview
            
            
            
        } // Vstack
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.passFinderBG)
        .onDisappear() {
            passFinderModel.fetchOther()
        }
        
    }
}

struct AddPersonView_Previews: PreviewProvider {
    static var previews: some View {
        AddPersonView().environmentObject(PassFinderViewModel())
    }
}
