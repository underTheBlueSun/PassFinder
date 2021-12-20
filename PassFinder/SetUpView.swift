//
//  SetUpView.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/16.
//

import SwiftUI

struct SetUpView: View {
    
    @EnvironmentObject var passFinderModel: PassFinderViewModel
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                
                
                ScrollView {
                    
//                    Button(action: {
//                        passFinderModel.deleteData()
//                    }, label: {
//                        Text("전부삭제")
//                    })
                    
                    VStack(alignment: .leading) {
                        Text("패스파인더는 재미로 간단히 해보는 간이 성격유형 테스트 앱입니다. 성격에는 좋고 나쁨이 없습니다. 검사로 자신의 가능성에 한계를 짓거나 유형안에 자신과 타인을 가두는 것은 바람직하지 않습니다. \n정확한 검사를 위해선 심리센터나 정식 MBTI검사를 받길 바랍니다.")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(width: 330, height: 150, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
//                    .padding()
                    
                    
                    
                    VStack(alignment: .leading) {
                        Text("에너지 방향").foregroundColor(Color.systemTeal).frame(width: 330)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("E").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("xtraversion (외향)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("사람들을 만나서 스트레스를 풀고 에너지를 충전함. 친구가 많고 얇고 넓게 사귐.").frame(width: 300, alignment: .leading)
                            .foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                        Spacer().frame(height: 5)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("I").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("ntroversion (내향)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("사람을 싫어하는게 아니라 혼자만의 시간을 가져야 스트레스가 풀리고 에너지가 충전됨. 친구가 적지만 깊게 사귐.").frame(width: 300, alignment: .leading).foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                    }
                    .frame(width: 330, height: 180, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
//                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("정보지각").foregroundColor(Color.systemTeal).frame(width: 330)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("S").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("ensing (감각)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("손으로 만지고 보고 듣고 하는 감각적 경험을 거쳐서 대상을 파악. 사실적, 구체적, 객관적").frame(width: 300, alignment: .leading)
                            .foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        Spacer().frame(height: 5)
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("I").foregroundColor(.orange).font(.system(size: 17))
                            Text("N").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("tuition (직관)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("구체적 경험을 거치지 않는 통찰과 직관으로 대상을 직접적으로 파악. 비유적, 상징적, 함축적 ").frame(width: 300, alignment: .leading).foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                    }
                    .frame(width: 330, height: 170, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
//                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("의사결정").foregroundColor(Color.systemTeal).frame(width: 330)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("T").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("hinking (사고)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("합리적, 논리적, 객관적 사고를 통한 의사결정. \n지향하는 가치는 진실과 사실").frame(width: 300, alignment: .leading)
                            .foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                        Spacer().frame(height: 5)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("F").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("eeling (감정)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("개인적, 주관적, 사람과의 관계를 통한 의사결정. 지향하는 가치는 선(착함)").frame(width: 300, alignment: .leading).foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                    }
                    .frame(width: 330, height: 160, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
                    
                    VStack(alignment: .leading) {
                        Text("생활양식").foregroundColor(Color.systemTeal).frame(width: 330)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("J").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("udging (판단)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("다양한 해결책을 빠르게 판단하여 시행착오를 거쳐 문제를 해결").frame(width: 300, alignment: .leading)
                            .foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                        Spacer().frame(height: 5)
                        
                        HStack(spacing: 0) {
                            Text("• ").foregroundColor(.orange).font(.system(size: 18, weight: .heavy))
                            Text("P").foregroundColor(.red).font(.system(size: 18, weight: .heavy))
                            Text("erceiving (인식)").foregroundColor(.orange).font(.system(size: 17))
                        }
                        .padding(.horizontal, 10)
                        Text("문제해결을 위한 최선의, 결정적 정보를 인식할 때까지 결정을 보류").frame(width: 300, alignment: .leading).foregroundColor(.white).padding(.horizontal, 17).font(.system(size: 15))
                        
                    }
                    .frame(width: 330, height: 170, alignment: .leading)
                    .background(Color.passFinderItemBG)
                    .cornerRadius(15)
                    
                } // ScrollView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.passFinderBG)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarColor(backgroundColor: UIColor(Color.passFinderBG), tintColor: .white)
                
                
                
                
            } // NavigationView
            
            VStack {
                HStack {
                    Image(systemName: "info.circle.fill").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                    Text("성격의 경향").foregroundColor(.white).font(.system(size: 25, weight: .heavy))
                }
                
                Spacer()
                
            }
            .frame(width: 300)
            
        }
        
        
        
    }
}

struct SetUpView_Previews: PreviewProvider {
    static var previews: some View {
        SetUpView()
    }
}
