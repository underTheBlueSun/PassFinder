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
        
        ScrollView {
            
            VStack(spacing:0) {
                
                Text("나의 유형")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .heavy))
                
                HStack(spacing: 20) {
                    
                    Image("ESFJ")
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 100, height: 110)
                    
                    VStack(spacing: 0) {
                        
                        Text("ISTP")
                            .foregroundColor(.systemTeal)
                            .font(.system(size: 50, weight: .heavy))
                            .padding(.vertical, 1)
                        
                        Divider().frame(width:110, height: 1).background(Color.white)
                        
        //                Text(passFinderModel.filteredArray[passFinderModel.filteredArray.startIndex].title)
                        Text("잔다르크형")
                            .foregroundColor(.passFinderItem1)
                            .font(.system(size: 20, weight: .heavy))
                            .padding(.vertical, 2)
                        
                    } // vstack
                    
                    
                } // hstack
                .padding()
                
                ScrollView {
                    
                    Text("한번 시작한 일은 끝까지 해 내는 사람. 신중하고 조용하며 집중력이 강하고 매사에 철저하며 사리분별력이 뛰어나다.실제 사실에 대하여 정확하고 체계적으로 기억하며 일 처리에 있어서도 신중하며 책임감이 강하다. 집중력이 강한 현실감각을 지녔으며 조직적이고 침착하다. 보수적인 경향이 있으며, 문제를 해결하는데 과거의 경험을 잘 적용하며, 반복되는 일상적인 일에 대한 인내력이 강하다. 자신과 타인의 감정과 기분을 배려하며, 전체적이고 타협적 방안을 고려하는 노력이 때로 필요하다. 정확성과 조직력을 발휘하는 분야의 일을 선호한다. 즉 회계, 법률, 생산, 건축, 의료, 사무직, 관리직 등에서 능력을 발휘하며, 위기상황에서도 안정되어 있다.")
                        .foregroundColor(.white)
                }
                .frame(width: 300, height: 120)
                .padding()
                
                VStack(spacing: 0) {
                    
                    Text("그래프")
                    
                } // vstack
                .frame(width: 340, height: 320)
                .background(.white)
                .cornerRadius(10)
                .padding()
                
            
                
                Spacer()

            } // vstack
            
        } // scrollview
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.passFinderBG)

    } // body
}

struct MyTypeView_Previews: PreviewProvider {
    static var previews: some View {
        MyTypeView().environmentObject(PassFinderViewModel())
    }
}
