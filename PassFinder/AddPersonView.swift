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
        
        ZStack {
            
            VStack {
                
                TextField("이름을 입력하세요", text: $passFinderModel.othername)
                    .textFieldStyle(.roundedBorder)
                    .font(.system(size: 15, weight: .heavy)).frame(width: 130).padding(.vertical, 30)
                
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
                
                Spacer()
                
            } // Vstack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.passFinderBG)
            
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        passFinderModel.othername = ""
                        presentaion.wrappedValue.dismiss()
                    }, label: {
                        Text("취소").font(.system(size: 25, weight: .heavy)).foregroundColor(.orange)
                    })
                    .frame(width: 50, alignment: .trailing)
                    
                    Spacer()
                    
                    if typeSelections.count == 1 && passFinderModel.othername != "" {
                    Button(action: {
                        
                    }, label: {
                        Text("저장").font(.system(size: 25, weight: .heavy)).foregroundColor(.orange)
                    })
                    .frame(width: 250, alignment: .trailing)
                    
                    }
                    
                }
                .padding(.horizontal, 20)
                                
                Spacer()

            }
            
        }
    
        
        
    }
}

struct AddPersonView_Previews: PreviewProvider {
    static var previews: some View {
        AddPersonView().environmentObject(PassFinderViewModel())
    }
}
